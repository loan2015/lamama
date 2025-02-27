#Shimmy ticky

#Shim
execute at @s run fill ~ ~ ~ ~ ~15 ~ light_gray_stained_glass replace lime_stained_glass

#Move
execute at @s run tp @s ~1 ~ ~

#Shim
execute at @s run fill ~ ~ ~ ~ ~15 ~ lime_stained_glass replace light_gray_stained_glass

#tick
scoreboard players add @s life 1
execute if score @s life matches 20.. run kill @s