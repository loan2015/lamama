#Plays the associated music for the area

scoreboard players set @s music_queue 0
scoreboard players set @s music -210
execute at @s run playsound minecraft:music.lumina.the_monument_crystal ambient @s ~ ~ ~ 0.9 1
