#This function is run on all players at the hz in the filename
##v Spawn in detection v
##execute as @a[x=-8,z=-8,y=255,dx=32,dy=1,dz=32] run function game:player/spawnin

#Placing monument blocks
execute if score @s place_red matches 1.. as d6c00078-6f0e-42db-aac7-0f7458f5aa42 at @s run function game:monument/marker/wool_check/start
execute if score @s place_red matches 1.. run scoreboard players remove @s place_red 1
execute if score @s place_orange matches 1.. as d6c00078-6f0e-42db-aac7-0f7458f5aa42 at @s run function game:monument/marker/wool_check/start
execute if score @s place_orange matches 1.. run scoreboard players remove @s place_orange 1
execute if score @s place_yellow matches 1.. as d6c00078-6f0e-42db-aac7-0f7458f5aa42 at @s run function game:monument/marker/wool_check/start
execute if score @s place_yellow matches 1.. run scoreboard players remove @s place_yellow 1
execute if score @s place_green matches 1.. as d6c00078-6f0e-42db-aac7-0f7458f5aa42 at @s run function game:monument/marker/wool_check/start
execute if score @s place_green matches 1.. run scoreboard players remove @s place_green 1
execute if score @s place_blue matches 1.. as d6c00078-6f0e-42db-aac7-0f7458f5aa42 at @s run function game:monument/marker/wool_check/start
execute if score @s place_blue matches 1.. run scoreboard players remove @s place_blue 1
execute if score @s place_purple matches 1.. as d6c00078-6f0e-42db-aac7-0f7458f5aa42 at @s run function game:monument/marker/wool_check/start
execute if score @s place_purple matches 1.. run scoreboard players remove @s place_purple 1

#King passive
tag @s[tag=king_passive,tag=standing_on_sculk] remove standing_on_sculk
attribute @s[tag=king_passive] generic.knockback_resistance modifier remove f5b31bdc-fdc2-4962-855d-528b256cb0be
execute if entity @s[tag=king_passive] if block ~ ~-1 ~ sculk run function game:player/king_passive

#Raycast for checking lecterns
execute if entity @s[gamemode=!creative,gamemode=!spectator] run function game:player/interacting_with_lectern/check

#Hookshot
execute if score @s hookshot matches 1.. at @s run function game:player/shield/ability/hookshot/ptick

#Stun ball
execute if score @s balls matches 1.. run function game:items/stunner/ball_thrown

#Eye cooldown
execute if score @s charmed_cooldown matches 1.. run scoreboard players remove @s charmed_cooldown 1

#Hurt effects
execute if entity @s[advancements={game:get_hit=true}] run function game:player/get_hit/get_hit

#Land softly system
execute if entity @s[tag=land_softly] run effect clear @s slow_falling
execute if entity @s[tag=land_softly] run tag @s remove land_softly
execute if score @s land_softly matches 1.. run function game:player/land_softly

#Item branch
execute as @s[advancements={game:invchange=true}] run function game:player/invchange
advancement revoke @s[advancements={game:invchange=true}] only game:invchange

#shield cooldown
tag @s remove shield_disabled
execute if score @s shield_cd matches 1.. run scoreboard players operation temp temp = @s shield_cd
execute if score @s shield_cd matches 1.. store result storage link:temp temp.cd int 0.5 run scoreboard players remove temp temp 1
execute if score @s shield_cd matches 1.. run function game:player/shield/cooldown_tick with storage link:temp temp
execute unless score @s shield_cd matches 1.. run xp set @s 0 levels
execute unless score @s shield_cd matches 1.. run xp set @s 0 points

#Blindness
execute if entity @s[y=-200,dy=136,gamemode=adventure] run effect give @s blindness 5 0 true

#Carrot on sticks
execute if score @s carrot matches 1.. run function game:player/carrot_on_stick_used

#Shield mechs
execute if score @s shield_i_frames matches 1..5 run function game:player/shield/initial_i_frames/i_frame_tick
execute unless score @s[tag=shield_i_frames] shield_i_frames matches 1..5 run function game:player/shield/initial_i_frames/unload_i_frames
stopsound @s[advancements={game:blocking=false},scores={laser_sound=1..}] record minecraft:sfx.laser
scoreboard players set @s[advancements={game:blocking=false},scores={laser_sound=1..}] laser_sound 0
scoreboard players set @s[advancements={game:blocking=false}] shield_i_frames 0
tag @s[advancements={game:blocking=false}] remove blocking
advancement revoke @s only game:blocking

#Health flask
execute if score @s bat_kill matches 1.. run scoreboard players remove @s health_kill 1
execute if score @s bat_kill matches 1.. run scoreboard players remove @s bat_kill 1
execute if score @s bat_kill matches 1.. run scoreboard players remove @s health_kill 1
execute if score @s bat_kill matches 1.. run scoreboard players remove @s bat_kill 1
scoreboard players add @s health_time 1
execute if score @s health_kill matches 1.. if entity @s[tag=light_mode] run loot give @s loot minecraft:blocks/soul_torch
execute if score @s health_kill matches 1.. run tag @s add health_charge_add
execute if score @s health_spawner matches 1.. run tag @s add health_charge_add
execute if score @s health_spawner matches 1.. run scoreboard players set @s spawner_mining_time 0
execute if entity @s[tag=health_charge_add] if score @s health_kill matches 1.. run scoreboard players remove @s health_kill 1
execute if entity @s[tag=health_charge_add] if score @s health_spawner matches 1.. run scoreboard players remove @s health_spawner 1
execute if entity @s[tag=health_charge_add] run scoreboard players set @s health_time 0
execute if score @s health_time matches 1200.. if score @s[tag=!challenge_mode] health_charge matches ..4 run tag @s add health_charge_add
execute if score @s health_time matches 1200.. run scoreboard players set @s health_time 0
execute if entity @s[tag=health_charge_add] run scoreboard players add @s health_charge 1
execute if score @s health_charge matches 6.. unless entity @s[tag=challenge_mode] run effect give @s minecraft:regeneration 1 2 true
execute if score @s health_charge matches 6.. run scoreboard players set @s health_charge 5
execute if entity @s[tag=health_charge_add] run function game:player/health_flask/add_charge
tag @s remove health_charge_add

#Pipe cooldown
execute if score @s recent_push matches 1.. run scoreboard players remove @s recent_push 1

#Stop ticking messages
execute if entity @s[tag=stoptickingmsg,tag=!stoptickingmsg_flag] run tag @s remove stoptickingmsg
execute if entity @s[tag=stoptickingmsg] run tag @s remove stoptickingmsg_flag

#Triggers
execute if score @s difficulty matches 1.. run function game:lobby/toggle_difficulty
execute if score @s campfire matches 1.. run function game:player/spawnpoint_fire/trigger_return
execute if score @s teleport_to_teammate matches 1.. run function game:player/trigger_tp

#flags
scoreboard players set @s shield_block_cd_check 0

#clear specific effects
effect clear @s poison
effect clear @s slowness
effect clear @s wither