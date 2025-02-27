#20hz as the player is blocking

#flag
execute if predicate game:target_entity run tag @s add shield_target_has
execute if score @s[tag=!shield_target_i_frames] shield_i_frames matches 1..5 run tag @s remove shield_target_has

#Begin raycast
execute at @s anchored eyes positioned ^0.5 ^-0.5 ^1 run summon marker ~ ~ ~ {UUID:[I;-140208739,2114471793,-1477720465,2094544871]}
scoreboard players set n temp 300
scoreboard players set end temp 0
scoreboard players set dmg_looper temp 4
scoreboard players set laser_hit_mob temp 0
execute at @s anchored eyes positioned ^ ^ ^0.01 run function game:player/shield/raycast/iterate

#Remove entities that have been flagged
tag @e[tag=hit_by_laser] remove hit_by_laser

#Bells and whistles
scoreboard players operation temp temp = 1hz gremloop
execute if score 1hz gremloop matches 10.. run scoreboard players operation temp temp *= -1 numbers
execute if score 1hz gremloop matches 10.. run scoreboard players add temp temp 20
scoreboard players add temp temp 20
execute if entity @s[tag=sculk_stopped] run scoreboard players remove temp temp 10
execute store result storage link:temp temp.pitch float 0.04 run scoreboard players get temp temp
scoreboard players remove temp temp 10
scoreboard players operation temp temp *= -1 numbers
scoreboard players add temp temp 54
execute store result storage link:temp temp.volume float 0.004 run scoreboard players get temp temp
#execute if score 10hz gremloop matches 1 run function game:player/shield/sound_macro with storage link:temp temp
execute if entity @s[tag=!light_placed,tag=!sculk_stopped] if score 1hz gremloop matches 8 unless score laser_hit_mob temp matches 1.. run playsound minecraft:entity.allay.item_taken record @s ~ ~ ~ 0.5 1.3

execute if score laser_hit_mob temp matches 1.. if score ability6 game matches 1.. if score @s laser_sound matches 0 run playsound minecraft:sfx.laser record @s ~ ~ ~ 1 1
execute if score laser_hit_mob temp matches 1.. if score ability6 game matches 1.. run scoreboard players add @s laser_sound 1
execute unless score laser_hit_mob temp matches 1.. if score @s laser_sound matches 1.. run stopsound @s record minecraft:sfx.laser
execute unless score laser_hit_mob temp matches 1.. if score @s laser_sound matches 1.. run scoreboard players set @s laser_sound 0

#0.25s i-frames
scoreboard players add @s shield_i_frames 1

#Kill marker
tp f7a4959d-7e08-4771-a7eb-c66f7cd837e7 0 200 0
kill f7a4959d-7e08-4771-a7eb-c66f7cd837e7

#add flags
tag @s add blocking
scoreboard players set @s spawner_mining_time 0

#Golden helmet
execute if predicate game:sprinting run tag @s add shield_sprint
execute if entity @s[tag=shield_sprint,tag=golden_helmet] run scoreboard players set $strength delta.api.launch 700
execute if entity @s[tag=shield_sprint,tag=golden_helmet] unless block ~ ~-0.05 ~ #minecraft:airish at @s run function delta:api/launch_looking

#Remove flags
tag @s remove shield_sprint
tag @s remove light_placed
tag @s remove sculk_stopped
tag @s remove hit_amethyst
tag @s remove hit_lamp
tag @s remove hookshotted
tag @s remove spawnpoint
tag @s remove place_leaf
tag @s remove dont_make_light
tag @s remove piped
tag @s remove floating_copper
tag @s remove shield_target_has
tag @s remove light_particles
scoreboard players set ricochet_laser temp 0