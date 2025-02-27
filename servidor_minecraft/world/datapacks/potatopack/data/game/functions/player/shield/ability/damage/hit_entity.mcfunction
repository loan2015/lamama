#happens to entities that get hit by the laser every tick for every player (can be lasered by 2x folks at once)

#Ability 6 >:)
execute if score ability6 game matches 1.. if entity @s[tag=!laser_immune,tag=!link.charmed] at @s run function game:player/shield/ability/damage/ability6_hit

#Slimes
execute if entity @s[tag=area3_slime] at @s run function game:player/shield/ability/damage/slime_hit_by_beam

#brutes
execute if entity @s[tag=area4_brute] at @s run function game:player/shield/ability/damage/brute_hit_by_beam

#brutes
execute if entity @s[tag=area5_knight] at @s run function game:player/shield/ability/damage/knight_hit_by_beam

#Ricochet
scoreboard players add ricochet_laser temp 1
execute if entity @a[limit=1,sort=nearest,tag=blocking,tag=standing_on_sculk] run tag @s add can_ricochet
tag @s add dont_bounce_back
scoreboard players set ricloop temp 30
execute if score ricochet_laser temp matches 1 at @s if entity @s[tag=can_ricochet] anchored eyes positioned ^ ^ ^0.1 facing entity @e[distance=0.1..4,type=#minecraft:hasai,type=!player,type=!wolf,tag=!link.charmed,limit=1,sort=nearest,tag=!dont_bounce_back,tag=!link.charmed] eyes run function game:player/shield/ability/damage/ricochet_particles
scoreboard players set ricloop temp 30
execute if score ricochet_laser temp matches 2 at @s if entity @s[tag=can_ricochet] anchored eyes positioned ^ ^ ^0.1 facing entity @e[distance=0.1..1.5,type=#minecraft:hasai,type=!player,type=!wolf,tag=!link.charmed,limit=1,sort=nearest,tag=!dont_bounce_back,tag=!link.charmed] eyes run function game:player/shield/ability/damage/ricochet_particles
execute if score ricochet_laser temp matches 1 at @s if entity @s[tag=can_ricochet] as @e[distance=0.1..4,type=#minecraft:hasai,type=!player,type=!wolf,tag=!link.charmed,limit=1,sort=nearest,tag=!dont_bounce_back,tag=!link.charmed] at @s run function game:player/shield/ability/damage/hit_entity
execute if score ricochet_laser temp matches 2 at @s if entity @s[tag=can_ricochet,tag=!link.charmed] as @e[distance=0.1..1.5,type=#minecraft:hasai,type=!player,type=!wolf,tag=!link.charmed,limit=1,sort=nearest,tag=!dont_bounce_back,tag=!link.charmed] at @s run function game:player/shield/ability/damage/hit_entity
tag @s remove dont_bounce_back
tag @s remove can_ricochet