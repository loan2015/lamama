#raycasting backsie
particle witch ~ ~ ~ 0.05 0.05 0.05 0 1 force
execute positioned ^ ^ ^-0.25 run particle witch ~ ~ ~ 0.05 0.05 0.05 0 1 force
particle witch ~ ~ ~ 0.05 0.05 0.05 0 1 normal
execute positioned ^ ^ ^-0.25 run particle witch ~ ~ ~ 0.05 0.05 0.05 0 1 normal



#iterate
scoreboard players add n temp 1
execute if score n temp matches ..200 positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:airish run function game:items/eye/raycast_back
