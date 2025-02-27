#Check
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=#minecraft:hasai,type=!player,type=!wolf,tag=!exception,type=!slime,type=!magma_cube,limit=1,sort=nearest,tag=!link.charmed,type=!enderman] at @s run function game:items/eye/raycast_end

#iterate
scoreboard players remove n temp 1
execute if score end temp matches 1.. run clear @s ender_eye 1
execute if score end temp matches 1.. facing entity f7a4959d-7e08-4771-a7eb-c66f7cd837e7 feet run function game:items/eye/raycast_back
execute if score n temp matches 1.. unless score end temp matches 1.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #minecraft:airish if score 5hz gremloop matches 1 run particle block_marker structure_void ^ ^ ^-1 0 0 0 0 1 force @s
execute if score n temp matches 1.. unless score end temp matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:airish run function game:items/eye/raycast
