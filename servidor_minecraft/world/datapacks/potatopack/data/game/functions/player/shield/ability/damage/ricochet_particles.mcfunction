#Particles for ricocheting
execute store result score random temp run random value 1..100

execute if score random temp matches ..30 run particle dust 0 0 0 1 ^ ^ ^0.25 0.05 0.05 0.05 1 1 force
execute unless score random temp matches ..30 run particle dust_color_transition 1.000 0.000 0.000 1 0.600 0.561 0.000 ^ ^ ^0.25 0 0 0 0 1 force

scoreboard players remove ricloop temp 1 
execute if score ricloop temp matches 1.. unless entity @e[dx=0,dy=0,dz=0,type=#minecraft:hasai,type=!player,type=!wolf,tag=!dont_bounce_back,tag=!link.charmed,limit=1] positioned ^ ^ ^0.25 run function game:player/shield/ability/damage/ricochet_particles