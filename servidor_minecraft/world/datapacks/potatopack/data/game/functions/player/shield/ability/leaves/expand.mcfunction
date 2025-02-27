#Extends leaf blocks as needed

#check
execute store result storage link:temp temp.distance float 1 run scoreboard players get @e[distance=..50,limit=1,sort=nearest,tag=leaves,type=marker] leaf_range
function game:player/shield/ability/leaves/check_range with storage link:temp temp

#second check
scoreboard players set temp temp 0
execute if block ~ ~ ~1 #minecraft:expanding_leaves run scoreboard players set temp temp 1
execute if block ~ ~ ~-1 #minecraft:expanding_leaves run scoreboard players set temp temp 1
execute if block ~1 ~ ~ #minecraft:expanding_leaves run scoreboard players set temp temp 1
execute if block ~-1 ~ ~ #minecraft:expanding_leaves run scoreboard players set temp temp 1
execute if block ~ ~1 ~ #minecraft:expanding_leaves run scoreboard players set temp temp 1

execute if block ~1 ~1 ~ #minecraft:expanding_leaves run scoreboard players set temp temp 1
execute if block ~-1 ~1 ~ #minecraft:expanding_leaves run scoreboard players set temp temp 1
execute if block ~ ~1 ~1 #minecraft:expanding_leaves run scoreboard players set temp temp 1
execute if block ~ ~1 ~-1 #minecraft:expanding_leaves run scoreboard players set temp temp 1

execute if block ~1 ~ ~1 #minecraft:expanding_leaves run scoreboard players set temp temp 1
execute if block ~-1 ~ ~-1 #minecraft:expanding_leaves run scoreboard players set temp temp 1
execute if block ~1 ~ ~1 #minecraft:expanding_leaves run scoreboard players set temp temp 1
execute if block ~-1 ~ ~-1 #minecraft:expanding_leaves run scoreboard players set temp temp 1

execute if score temp temp matches 0 run tag @s remove expand

#Failure may result in life
tag @s remove light_placed
execute if entity @s[tag=!expand] unless block ~ ~ ~ #minecraft:light_blocked if block ~ ~ ~ #minecraft:light_replace run tag @s add light_placed
execute if entity @s[tag=light_placed,tag=!expand] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..0.1,type=marker,tag=light_marker] run summon marker ~ ~ ~ {Tags:["light_marker"]}
execute if entity @s[tag=light_placed,tag=!expand] align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.1,type=marker,tag=light_marker] run tag @s add wait_1_tick
execute if entity @s[tag=light_placed,tag=!expand] run setblock ~ ~ ~ light[level=14]
execute if entity @s[tag=light_placed,tag=!expand] run tag @s add light_particles

#PERCENTAGE+MATH
execute if entity @s[tag=expand] store result score range temp run scoreboard players get @e[distance=..50,limit=1,sort=nearest,tag=leaves,type=marker] leaf_range
scoreboard players operation n temp = range temp
scoreboard players set n2 temp 1
execute if entity @s[tag=expand] run function game:player/shield/ability/leaves/check_expanse with storage link:temp temp
scoreboard players remove n2 temp 2
scoreboard players operation n3 temp = range temp
scoreboard players operation n3 temp -= n2 temp

scoreboard players operation n2 math = n2 temp

execute if entity @s[tag=expand] run scoreboard players set percent math 100
execute if entity @s[tag=expand] run scoreboard players operation percent math *= n3 temp
execute if entity @s[tag=expand] run scoreboard players operation percent math /= range temp

#Place
execute if entity @s[tag=expand] if score percent math matches 75.. if block ~ ~ ~ #minecraft:airish run setblock ~ ~ ~ oak_leaves
execute if entity @s[tag=expand] if score percent math matches 51..74 if block ~ ~ ~ #minecraft:airish run setblock ~ ~ ~ dark_oak_leaves
execute if entity @s[tag=expand] if score percent math matches 25..50 if block ~ ~ ~ #minecraft:airish run setblock ~ ~ ~ acacia_leaves
execute if entity @s[tag=expand] if score percent math matches ..25 if block ~ ~ ~ #minecraft:airish run setblock ~ ~ ~ birch_leaves

#Succ
execute if entity @s[tag=expand] run particle happy_villager ~ ~ ~ 0.4 0.4 0.4 0 10 force
execute if entity @s[tag=expand] run playsound minecraft:block.wet_grass.place ambient @a ~ ~ ~ 1 0.8
execute unless entity @s[tag=expand] run particle block oak_leaves ~ ~ ~ 0.3 0.3 0.3 0 3 force
execute unless entity @s[tag=expand] run particle block oak_leaves ~ ~ ~ 0.3 0.3 0.3 0 3 normal
execute unless entity @s[tag=expand] run playsound minecraft:block.azalea_leaves.break ambient @a ~ ~ ~ 0.4 0.8

#Notify
execute if entity @s[tag=expand,tag=!leaves_notify] run function game:player/notify/leaves

#flags
execute if entity @s[tag=expand] run tag @s add place_leaf
tag @s remove expand
tag @s remove end_leaf_expand_loop