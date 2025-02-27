#Magma cube 20hz

#initialize
execute if entity @s[tag=!cube_ini] run scoreboard players set @s temp -6
execute if entity @s[tag=!cube_ini] run tag @s add cube_ini

#Jump animation
execute unless block ~ ~-0.1 ~ #minecraft:airish run tag @s remove jumpbarred
#execute if block ~ ~-0.1 ~ #minecraft:airish if entity @s[tag=!jumping,tag=!jumpbarred,nbt={OnGround:0b}] if entity @a[distance=..16,limit=1,sort=nearest] run data merge entity @s {NoGravity:1b}
execute if block ~ ~-0.1 ~ #minecraft:airish if score @s temp matches 0.. if entity @s[tag=!jumping,tag=!jumpbarred,nbt={OnGround:0b,HurtTime:0s}] if entity @a[distance=..16,limit=1,sort=nearest] run tag @s add jumping
scoreboard players add @s[tag=jumping] animation 1
execute if score @s animation matches 10 run tp @s @s
execute if score @s animation matches 10 run playsound entity.magma_cube.jump hostile @a ~ ~ ~ 1 0.8
execute if score @s animation matches 10 run particle flame ~ ~ ~ 0 0 0 0.1 20 force
execute if score @s animation matches 10 run data merge entity @s {NoGravity:1b}
data modify storage link:temp temp.scaler set value 1.1f
execute if score @s animation matches 10 facing entity @a[distance=..32,limit=1,sort=nearest] eyes facing ^ ^ ^1 run function tools:helper/calls/push_looking with storage link:temp temp

#windup
execute if score @s temp matches ..-1 run scoreboard players add @s temp 1

#exception
execute if entity @s[tag=jumpbarred] run scoreboard players add @s temp 1
execute if score @s temp matches 40.. run tag @s remove jumpbarred
execute if score @s temp matches 40.. run scoreboard players set @s temp 0

#reset
execute if score @s animation matches 20.. run scoreboard players set @s temp 0

execute if score @s animation matches 20.. run tag @s add jumpbarred
execute if score @s animation matches 20.. run tag @s remove jumping
execute if score @s animation matches 20.. run data merge entity @s {NoGravity:0b}
execute if score @s animation matches 20.. run scoreboard players set @s animation 0
