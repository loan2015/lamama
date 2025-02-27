#20hz on pipe markers

#scores
scoreboard players add @s pipe 0
scoreboard players remove @s[scores={pipe=1..29}] pipe 1

#animation
execute if score @s pipe matches ..0 run setblock ~ ~ ~ white_stained_glass
execute if score @s pipe matches 1..9 run setblock ~ ~ ~ black_stained_glass
execute if score @s pipe matches 10..19 run setblock ~ ~ ~ gray_stained_glass
execute if score @s pipe matches 20..29 run setblock ~ ~ ~ brown_stained_glass
execute if score @s pipe matches 30.. run setblock ~ ~ ~ air

execute if score @s pipe matches 1 run playsound minecraft:block.deepslate.break record @a ~ ~ ~ 1 0.5
execute if score @s pipe matches 10 run playsound minecraft:block.deepslate.break record @a ~ ~ ~ 1 0.5
execute if score @s pipe matches 20 run playsound minecraft:block.deepslate.break record @a ~ ~ ~ 1 0.5
execute if score @s pipe matches 30 run playsound block.fire.extinguish record @a ~ ~ ~ 1 0.5

execute if score @s pipe matches 1 run particle minecraft:splash ~ ~0.5 ~ 1 0.5 1 0 20
execute if score @s pipe matches 10 run particle minecraft:splash ~ ~0.5 ~ 1 0.5 1 0 20
execute if score @s pipe matches 20 run particle minecraft:splash ~ ~0.5 ~ 1 0.5 1 0 20
execute if score @s pipe matches 30 run particle minecraft:splash ~ ~0.5 ~ 1 0.5 1 0 20

#branching active
execute if score @s pipe matches 30.. run function game:player/shield/ability/pipe/marker_active

#regiser
execute if entity @s[tag=!pipe_register] run say To set launch distance: /scoreboard players set @e[tag=pipe,limit=1,sort=nearest] pipe_vel <x>
execute if entity @s[tag=!pipe_register] align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute if entity @s[tag=!pipe_register] run setblock ~ ~ ~ white_stained_glass
execute if entity @s[tag=!pipe_register] run tag @s add pipe_register