#Plays the associated music for the area

scoreboard players set @s music_queue 0
scoreboard players set @s music -187
execute at @s run playsound minecraft:music.lumina.the_whir_of_life ambient @s ~ ~ ~ 0.4 1
