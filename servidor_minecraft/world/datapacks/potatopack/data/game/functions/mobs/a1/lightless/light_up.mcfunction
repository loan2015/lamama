tag @s add lighted
tag @s remove darken
effect clear @s speed
data modify entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set value 0d
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
playsound minecraft:entity.drowned.death_water hostile @a ~ ~ ~ 1 0.5
particle minecraft:crimson_spore ~ ~0.5 ~ 0 0.5 0 0.1 10
particle minecraft:crimson_spore ~ ~0.5 ~ 0 0.5 0 0.1 10 force

execute as @p if entity @s[tag=!lightless.notify] run function game:player/notify/lightless