#20hz on marker


#animations
scoreboard players add @s life 1

execute if score @s life matches 5 run fill ~1 ~1 ~ ~-1 ~ ~ cherry_leaves
execute if score @s life matches 5 run fill ~ ~1 ~1 ~ ~ ~-1 cherry_leaves
execute if score @s life matches 5 run fill ~ ~2 ~ ~ ~ ~ cherry_leaves
execute if score @s life matches 5 run setblock ~ ~1 ~ moss_block
execute if score @s life matches 5 run setblock ~ ~ ~ moss_block
execute if score @s life matches 5 run playsound minecraft:block.wet_grass.place ambient @a ~ ~ ~ 1 0.9


execute if score @s life matches 10 run setblock ~ ~2 ~ air
execute if score @s life matches 10 run fill ~3 ~1 ~3 ~-3 ~ ~-3 air replace #minecraft:flower_blocks
execute if score @s life matches 10 run clone 9 200 -19 13 201 -23 ~-2 ~ ~-2 masked
execute if score @s life matches 10 run playsound minecraft:block.wet_grass.place ambient @a ~ ~ ~ 1 1.0

execute if score @s life matches 15 run fill ~3 ~1 ~3 ~-3 ~ ~-3 air replace #minecraft:flower_blocks
execute if score @s life matches 15 run clone 1 201 -27 7 200 -21 ~-3 ~ ~-3 masked
execute if score @s life matches 15 run playsound minecraft:block.wet_grass.place ambient @a ~ ~ ~ 1 1.2
