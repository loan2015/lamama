#Plays the associated music for the area

scoreboard players set @s music_queue 0
scoreboard players set @s music -190
execute at @s run playsound minecraft:music.lumina.reclaimed_by_nature ambient @s ~ ~ ~ 1 1
