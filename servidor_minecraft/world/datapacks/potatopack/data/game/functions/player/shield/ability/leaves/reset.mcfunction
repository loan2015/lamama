#Unloads all the markers

execute as @e[type=marker,tag=leaves] at @s run function game:player/shield/ability/leaves/unload
execute as @e[type=marker,tag=vines] at @s run function game:player/shield/ability/leaves/vines/unload
execute as @e[type=marker,tag=flower] at @s run function game:player/shield/ability/leaves/flower/unload