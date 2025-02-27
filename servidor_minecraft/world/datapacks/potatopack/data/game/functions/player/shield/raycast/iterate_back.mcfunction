#Iterates back
scoreboard players add n temp 1

#Particulates
execute store result score random temp run random value 1..100
execute if entity @s[tag=light_placed,tag=!hit_amethyst,tag=!hit_lamp,tag=!hookshotted,tag=!spawnpoint,tag=!place_leaf,tag=!,tag=!dont_make_light,tag=!piped,tag=!floating_copper,tag=!shield_target_has,tag=!standing_on_sculk] if score random temp matches ..30 run particle dust 0.973 0.965 0.553 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force

execute if entity @s[tag=light_placed,tag=!hit_amethyst,tag=!hit_lamp,tag=!hookshotted,tag=!spawnpoint,tag=!place_leaf,tag=!,tag=!dont_make_light,tag=!piped,tag=!floating_copper,tag=!shield_target_has,tag=!standing_on_sculk] if score random temp matches 31..35 if score ability2 game matches 1.. run particle dust 0.675 0 0.416 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if entity @s[tag=light_placed,tag=!hit_amethyst,tag=!hit_lamp,tag=!hookshotted,tag=!spawnpoint,tag=!place_leaf,tag=!,tag=!dont_make_light,tag=!piped,tag=!floating_copper,tag=!shield_target_has,tag=!standing_on_sculk] if score random temp matches 41..45 if score ability3 game matches 1.. run particle dust 0.184 0.62 0.012 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if entity @s[tag=light_placed,tag=!hit_amethyst,tag=!hit_lamp,tag=!hookshotted,tag=!spawnpoint,tag=!place_leaf,tag=!,tag=!dont_make_light,tag=!piped,tag=!floating_copper,tag=!shield_target_has,tag=!standing_on_sculk] if score random temp matches 51..55 if score ability5 game matches 1.. run particle dust 0.659 0.243 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if entity @s[tag=light_placed,tag=!hit_amethyst,tag=!hit_lamp,tag=!hookshotted,tag=!spawnpoint,tag=!place_leaf,tag=!,tag=!dont_make_light,tag=!piped,tag=!floating_copper,tag=!shield_target_has,tag=!standing_on_sculk] if score random temp matches 61..65 if score ability6 game matches 1.. run particle dust 0.973 0 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force

execute if entity @s[tag=standing_on_sculk] if score random temp matches ..30 run particle dust 0 0 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force

execute if entity @s[tag=light_particles] if score random temp matches ..30 run particle dust 0.973 0.965 0.553 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force

execute if entity @s[tag=place_leaf] if score random temp matches ..30 run particle dust 0.184 0.62 0.012 2 ~ ~ ~ 0.1 0.1 0.1 1 1 force
execute if entity @s[tag=spawnpoint] run particle dust 0.067 0.435 0.914 2 ~ ~ ~ 0.1 0.1 0.1 1 1 force
execute if entity @s[tag=hit_amethyst] run particle dust 0.675 0 0.416 2 ~ ~ ~ 0.1 0.1 0.1 1 1 force
execute if entity @s[tag=hit_lamp] run particle dust 0.973 0 0 2 ~ ~ ~ 0.1 0.1 0.1 1 1 force
execute if entity @s[tag=floating_copper] run particle dust 0.659 0.243 0 2 ~ ~ ~ 0.1 0.1 0.1 1 1 force
execute if entity @s[tag=piped] if score random temp matches ..30 run particle dust 0.659 0.243 0 1 ~ ~ ~ 0.1 0.1 0.1 1 1 force
execute if entity @s[tag=!light_placed,tag=!sculk_stopped] unless score laser_hit_mob temp matches 1.. run function game:player/shield/raycast/particle/gray_sub
execute if entity @s[tag=sculk_stopped] if score random temp matches ..20 run particle dust 0.173 0.173 0.173 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if score laser_hit_mob temp matches 1.. run particle dust_color_transition 1.000 0.000 0.000 1 0.600 0.561 0.000 ~ ~ ~ 0 0 0 0 1 force

execute if score n temp matches -1..295 positioned ^ ^ ^0.25 run function game:player/shield/raycast/iterate_back
execute unless score n temp matches ..295 run scoreboard players set n temp -999