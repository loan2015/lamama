#Looks for a lectern

execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #minecraft:airish run function game:player/interacting_with_lectern/hit

scoreboard players remove n temp 1
execute if score n temp matches 1.. positioned ^ ^ ^0.1 run function game:player/interacting_with_lectern/raycast