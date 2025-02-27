#Happens to wolves when they spawn
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.01 run scoreboard players get max_damage game
data modify entity @s Owner set from entity @p UUID
execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 0.01 run data get entity @p Attributes[{Name:"minecraft:generic.max_health"}].Base 100
execute store result entity @s Health float 0.01 run data get entity @p Attributes[{Name:"minecraft:generic.max_health"}].Base 100
execute store result entity @s Attributes[{Name:"minecraft:generic.armor"}].Base double 0.01 run attribute @p minecraft:generic.armor get 100
attribute @s generic.armor_toughness base set 1000

data merge entity @s {CustomNameVisible:0b}

effect give @s regeneration 120 0 false
effect give @s resistance 120 0 false

tag @s add tame
tag @s add mh_hide_bar
tag @s add mh_exception

#Kill old wolf
execute as @e[distance=..1,tag=!tame,type=wolf,limit=1,sort=nearest] at @s run tag @s add fake_tame
execute as @e[distance=..1,tag=!tame,type=wolf,limit=1,sort=nearest] at @s run tag @s add tame
execute as @e[distance=..1,tag=fake_tame,type=wolf,limit=1,sort=nearest] at @s run function tools:helper/entity/voidkill