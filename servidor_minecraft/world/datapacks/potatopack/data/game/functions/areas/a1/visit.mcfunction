#Code that happens when you first visit the area

#Music
scoreboard players set @s music_queue 0
execute unless score @s music matches 1.. run scoreboard players set @s music_queue 1

execute if score @s music matches 1.. run playsound minecraft:music.lumina.a_way_down ambient @s ~ ~ ~ 1 1
execute if score @s music matches 1.. run scoreboard players set @s music -600

#Titles
title @s times 40 100 40
title @s title {"translate":"notify.area.enter.area1"}
title @s subtitle {"translate":"notify.area.area1"}
playsound minecraft:ambient.cave record @s ^ ^ ^3 1 0.5

#flags
tag @s add visited_a1