
#particles
execute unless entity @s[tag=hit_glass] if block ^ ^ ^-0.5 #minecraft:prisms run tag @s add hit_glass
execute unless entity @s[tag=hit_glass] run particle dust 0.973 0.965 0.553 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if entity @s[tag=hit_glass,tag=red] run particle dust 1 0 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 normal


#iterate
scoreboard players remove n temp 1
execute if score n temp matches 1.. positioned ^ ^ ^0.12 run function game:monument/marker/prism/particle_loop