#when brute is hit!

scoreboard players add @s animation 1

execute if score @s animation matches 5 run item replace entity @s armor.head with air
execute if score @s animation matches 10 run item replace entity @s armor.chest with air
execute if score @s animation matches 15 run item replace entity @s armor.legs with air
execute if score @s animation matches 20 run item replace entity @s armor.feet with air
execute if score @s animation matches 40 run item replace entity @s weapon.offhand with air

execute if score @s animation matches 5 run particle minecraft:crimson_spore ~ ~0.5 ~ 0 0.5 0 0.1 10 force
execute if score @s animation matches 10 run particle minecraft:crimson_spore ~ ~0.5 ~ 0 0.5 0 0.1 10 force
execute if score @s animation matches 15 run particle minecraft:crimson_spore ~ ~0.5 ~ 0 0.5 0 0.1 10 force
execute if score @s animation matches 20 run particle minecraft:crimson_spore ~ ~0.5 ~ 0 0.5 0 0.1 10 force
execute if score @s animation matches 40 run particle minecraft:crimson_spore ~ ~0.5 ~ 0 0.5 0 0.1 10 force
execute if score @s animation matches 40 run tag @s remove disable_shield_80
execute if score @s animation matches 40 run tag @s remove shield_breaker
execute if score @s animation matches 40 run tag @s remove area4_brute

execute if score @s animation matches 5 run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.32d
execute if score @s animation matches 10 run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.30d
execute if score @s animation matches 15 run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.27d
execute if score @s animation matches 20 run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.24d

execute if score @s animation matches 5 run playsound minecraft:entity.piglin.jealous hostile @a ~ ~ ~ 1 0.73
execute if score @s animation matches 10 run playsound minecraft:entity.piglin.jealous hostile @a ~ ~ ~ 1 0.7
execute if score @s animation matches 15 run playsound minecraft:entity.piglin.jealous hostile @a ~ ~ ~ 1 0.67
execute if score @s animation matches 20 run playsound minecraft:entity.piglin.jealous hostile @a ~ ~ ~ 1 0.64
execute if score @s animation matches 40 run playsound minecraft:entity.piglin.retreat hostile @a ~ ~ ~ 1 0.5

#End laser and add flag to set flags
scoreboard players set end temp 1
scoreboard players add place_leaf temp 1
tag @a[limit=1,sort=nearest,tag=blocking] add light_placed
tag @a[limit=1,sort=nearest,tag=blocking] add floating_copper
