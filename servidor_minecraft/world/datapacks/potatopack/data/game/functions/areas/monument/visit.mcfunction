#Code that happens when you first visit the area

#Music
scoreboard players set @s music_queue 0
execute unless score @s music matches 1.. run scoreboard players set @s music_queue -1

execute if score @s music matches 1.. run playsound minecraft:music.lumina.the_monument_crystal ambient @s ~ ~ ~ 0.9 1
execute if score @s music matches 1.. run scoreboard players set @s music -210

#Titles


#flags
tag @s add visited_mon