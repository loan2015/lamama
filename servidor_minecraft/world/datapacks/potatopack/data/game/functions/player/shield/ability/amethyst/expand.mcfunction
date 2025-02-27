#Epxands light

#light
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 light[level=10] replace air

#tags
tag @s remove expand
scoreboard players set amethyst_expand temp 1

#Bells and wistles
particle dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.05 10 force
particle dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.05 10 normal

#Sound branch
execute store result storage link:temp temp.pitch float 0.1 run scoreboard players get amethyst_pitch temp
function game:player/shield/ability/amethyst/sound with storage link:temp temp
execute if score amethyst_expand temp matches 0 run scoreboard players add amethyst_pitch temp 1

#EXPAND
execute if score ability1 game matches 1.. as @e[distance=..5,tag=amethyst,tag=!hit,type=marker] at @s run function game:player/shield/ability/amethyst/marker_is_hit

