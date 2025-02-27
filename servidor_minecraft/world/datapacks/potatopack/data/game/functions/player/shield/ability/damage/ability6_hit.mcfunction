#Happens to entities hit by ability 6


#Light
execute if entity @s[tag=lightless] unless block ~ ~ ~ #minecraft:light_blocked positioned ~ ~ ~ if block ~ ~ ~ #minecraft:light_replace run tag @s add light_placed
execute if entity @s[tag=light_placed] positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..0.1,type=marker,tag=light_marker] run summon marker ~ ~ ~ {Tags:["light_marker"]}
execute if entity @s[tag=light_placed] positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.1,type=marker,tag=light_marker] run tag @s add wait_1_tick
execute if entity @s[tag=light_placed] positioned ~ ~ ~ run setblock ~ ~ ~ light[level=14]
tag @s remove light_placed

#Damaging
scoreboard players set iframes lds 0
scoreboard players set knockback lds 0
scoreboard players set scaletoarmor lds 0
scoreboard players set damage lds 1500
execute if score ricochet_laser temp matches 1 run scoreboard players set damage lds 1100
execute if score ricochet_laser temp matches 2 run scoreboard players set damage lds 750
execute if score ricochet_laser temp matches 3.. run scoreboard players set damage lds 500
execute if entity @s[type=enderman] run scoreboard players set damage lds 750
execute if entity @s[type=vex] run scoreboard players set damage lds 2250

execute if score 5hz gremloop matches 1 run function tools:helper/entity/damage

#particulates
particle minecraft:block redstone_wire ~ ~1 ~ 0.3 0.3 0.3 10 5
particle minecraft:block redstone_wire ~ ~1 ~ 0.3 0.3 0.3 10 5 force

#Endermen
#data modify storage link:temp temp.scaler set value 0.25f
#execute if entity @s[type=enderman] unless entity @a[distance=..1,limit=1] facing entity @p feet run tp @s ~ ~ ~ ~ ~
#execute if entity @s[type=enderman] unless entity @a[distance=..1,limit=1] facing entity @p feet run function tools:helper/calls/push_looking with storage link:temp temp
#execute if entity @s[type=enderman] run effect clear @s slowness

#End laser and add flag to set flags
scoreboard players set end temp 1
scoreboard players add laser_hit_mob temp 1