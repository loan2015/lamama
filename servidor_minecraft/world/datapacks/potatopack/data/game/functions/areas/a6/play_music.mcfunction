#Plays the associated music for the area

scoreboard players set @s music_queue 0
scoreboard players set @s music -600
execute at @s run playsound minecraft:music.lumina.ambitions_folly_a ambient @s ~ ~ ~ 1 1
