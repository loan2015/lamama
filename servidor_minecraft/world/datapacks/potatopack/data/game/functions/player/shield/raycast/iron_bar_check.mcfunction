#Checks corners of iron bars to see if you can raycast through them

scoreboard players set sides temp 0
execute unless block ~1 ~ ~ #minecraft:airish run scoreboard players add sides temp 1
execute unless block ~-1 ~ ~ #minecraft:airish run scoreboard players add sides temp 1
execute unless block ~ ~ ~1 #minecraft:airish run scoreboard players add sides temp 1
execute unless block ~ ~ ~-1 #minecraft:airish run scoreboard players add sides temp 1


#Pass through
execute if score sides temp matches 2.. run function game:player/shield/raycast/hit_block