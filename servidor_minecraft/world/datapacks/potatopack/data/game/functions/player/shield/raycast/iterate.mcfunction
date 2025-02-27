#Draws the main raycast

#Impact code
execute if block ~ ~ ~ iron_bars run function game:player/shield/raycast/iron_bar_check
execute unless block ~ ~ ~ #minecraft:shield_raycast run function game:player/shield/raycast/hit_block
execute if block ~ ~ ~ #minecraft:create_call run function game:player/shield/raycast/hit_block

#damage checks once every 4 iterations
execute if score damage_looper temp matches 4.. positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=#minecraft:hasai,type=!player,type=!wolf,limit=1,sort=nearest] at @s run function game:player/shield/ability/damage/hit_entity
execute if score damage_looper temp matches 4.. run scoreboard players set damage_looper temp 0
scoreboard players add damage_looper temp 1

#Main loop
scoreboard players remove n temp 1
execute if score end temp matches 1.. facing entity f7a4959d-7e08-4771-a7eb-c66f7cd837e7 eyes run function game:player/shield/raycast/iterate_back
execute unless score n temp matches 1.. facing entity f7a4959d-7e08-4771-a7eb-c66f7cd837e7 eyes run function game:player/shield/raycast/iterate_back
execute if score n temp matches 1.. unless score end temp matches 1.. positioned ^ ^ ^0.25 run function game:player/shield/raycast/iterate