#Happens when shielding hits le blockie

#Light
execute unless block ~ ~ ~ #minecraft:light_blocked positioned ^ ^ ^-0.25 if block ~ ~ ~ #minecraft:light_replace run tag @s add light_placed
execute if entity @s[tag=light_placed,predicate=!game:sneaking] if score ability3 game matches 1.. if block ~ ~ ~ #minecraft:expanding_leaves positioned ^ ^ ^-0.25 unless block ~ ~-0.25 ~ #minecraft:expanding_leaves run tag @s add dont_make_light
execute if entity @s[tag=light_placed,tag=!dont_make_light] positioned ^ ^ ^-0.25 align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..0.1,type=marker,tag=light_marker] run summon marker ~ ~ ~ {Tags:["light_marker"]}
execute if entity @s[tag=light_placed,tag=!dont_make_light] positioned ^ ^ ^-0.25 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.1,type=marker,tag=light_marker] run tag @s add wait_1_tick
execute if entity @s[tag=light_placed,tag=!dont_make_light] positioned ^ ^ ^-0.25 run setblock ~ ~ ~ light[level=14]

#Vine light
execute positioned ^ ^ ^-0.25 if block ~ ~ ~ vine positioned ^ ^ ^-1.25 align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #minecraft:light_blocked positioned ^ ^ ^-0.25 if block ~ ~ ~ #minecraft:light_replace run tag @s add vine_light
execute if entity @s[tag=vine_light] run tag @s add light_placed
execute if entity @s[tag=vine_light] positioned ^ ^ ^-1.5 align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..0.1,type=marker,tag=light_marker] run summon marker ~ ~ ~ {Tags:["light_marker"]}
execute if entity @s[tag=vine_light] positioned ^ ^ ^-1.5 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.1,type=marker,tag=light_marker] run tag @s add wait_1_tick
execute if entity @s[tag=vine_light] positioned ^ ^ ^-1.5 align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~ ~ light[level=14]
tag @s remove vine_light

#Sculk
execute if block ~ ~ ~ #minecraft:light_blocked run tag @s add sculk_stopped
execute if entity @s[tag=sculk_stopped] if score 10hz gremloop matches 1 positioned ^ ^ ^-0.25 run particle large_smoke ~ ~ ~ 0.2 0.2 0.2 0.05 1 force
execute if entity @s[tag=sculk_stopped,tag=!dont_make_light] positioned ^ ^ ^-0.25 if block ~ ~ ~ #minecraft:light_replace align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..0.1,type=marker,tag=light_marker] run summon marker ~ ~ ~ {Tags:["light_marker"]}
execute if entity @s[tag=sculk_stopped,tag=!dont_make_light] positioned ^ ^ ^-0.25 if block ~ ~ ~ #minecraft:light_replace align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.1,type=marker,tag=light_marker] run tag @s add wait_1_tick
execute if entity @s[tag=sculk_stopped,tag=!dont_make_light] positioned ^ ^ ^-0.25 if block ~ ~ ~ #minecraft:light_replace run setblock ~ ~ ~ light[level=8]

#Amethyst
execute if score ability1 game matches 1.. if entity @e[distance=..4,tag=amethyst,tag=!hit,type=marker,limit=1] run tag @s add hit_amethyst
execute if entity @s[tag=hit_amethyst] as @e[distance=..4,tag=amethyst,tag=!hit,type=marker,limit=1] at @s run function game:player/shield/ability/amethyst/marker_is_hit

#redstone lampie pie
execute if score ability2 game matches 1.. if block ~ ~ ~ redstone_lamp if score $lamp_cooldown temp matches ..0 run function game:player/shield/ability/lamp/hit

#redstone lampie pie
execute if score ability4 game matches 1.. if score n temp matches 200.. if block ~ ~ ~ #minecraft:hookshot run function game:player/shield/ability/hookshot/land
execute if score ability4 game matches 1.. if score n temp matches ..199 if block ~ ~ ~ #minecraft:hookshot if score 5hz gremloop matches 1 positioned ^ ^ ^-1 run particle block_marker barrier ~ ~ ~ 0 0 0 0 1 force @s
execute if score ability4 game matches 1.. if score n temp matches ..199 if block ~ ~ ~ #minecraft:hookshot if score 5hz gremloop matches 1 at @s run playsound minecraft:block.note_block.didgeridoo record @s ~ ~ ~ 1 0.7

#Spawnpoint
execute if block ~ ~ ~ soul_campfire run tag @s add spawnpoint
execute if block ~ ~ ~ soul_campfire[lit=true] align xyz as @e[dx=0,dy=0,dz=0,limit=1,tag=soul_campfire,type=marker] at @s run function game:player/spawnpoint_fire/set_spawnpoint
execute if block ~ ~ ~ soul_campfire[lit=false] align xyz positioned ~0.5 ~0.5 ~0.5 summon marker run function game:player/spawnpoint_fire/hit

#Leaves
execute if score ability3 game matches 1.. if entity @s[predicate=!game:sneaking] if block ~ ~ ~ #minecraft:expanding_leaves if score 5hz gremloop matches 1 positioned ^ ^ ^-0.25 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-0.5 ~-1.5 ~-0.5 unless entity @a[dx=0,dz=0] positioned ~0.5 ~1.5 ~0.5 run function game:player/shield/ability/leaves/expand
execute if score ability3 game matches 1.. if entity @s[predicate=!game:sneaking] if block ~ ~ ~ #minecraft:expanding_leaves if score 5hz gremloop matches 1 positioned ^ ^ ^-0.25 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-0.5 ~-1.5 ~-0.5 if entity @a[dx=0,dz=0] positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #minecraft:expanding_leaves run function game:player/shield/ability/leaves/expand
execute if score ability3 game matches 1.. if entity @s[predicate=game:sneaking] if block ~ ~ ~ #minecraft:remove_leaves if score 5hz gremloop matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 run function game:player/shield/ability/leaves/yeet

#vines
execute if score ability3 game matches 1.. if score 10hz gremloop matches 0 if block ~ ~ ~ twisting_vines if block ~ ~1 ~ #minecraft:airish positioned ~ ~1 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function game:player/shield/ability/leaves/vines/twisting_hit
execute if score ability3 game matches 1.. if block ~ ~ ~ sculk_vein align xyz positioned ~0.5 ~0.5 ~0.5 run function game:player/shield/ability/leaves/vines/vine_hit
execute if score ability3 game matches 1.. positioned ^ ^ ^-0.25 if block ~ ~ ~ sculk_vein align xyz positioned ~0.5 ~0.5 ~0.5 run function game:player/shield/ability/leaves/vines/vine_hit

#Flower
execute if score ability3 game matches 1.. if block ~ ~ ~ minecraft:player_head{SkullOwner:{Id:[I;291876246,294995217,-1077012272,-931205410]}} align xyz positioned ~0.5 ~0.5 ~0.5 run function game:player/shield/ability/leaves/flower/hit

#Pipes
execute if score ability5 game matches 1.. if block ~ ~ ~ #minecraft:pipes as @e[distance=..2,type=marker,tag=pipe,limit=1,sort=nearest] at @s run function game:player/shield/ability/pipe/marker_is_hit
execute if score ability5 game matches 1.. if block ~ ~ ~ #minecraft:pipes run tag @s add piped

#floating copper
execute if score ability5 game matches 1.. if block ~ ~ ~ tripwire run tag @s add floating_copper
execute if score ability5 game matches 1.. if block ~ ~ ~ tripwire align xyz positioned ~0.5 ~0.5 ~0.5 summon marker run function game:player/shield/ability/floating_copper/marker_is_hit

#Allays
data modify storage link:temp temp.scaler set value 0.5f
execute if score all_wool wool matches 1.. if score 5hz gremloop matches 1 run summon marker ~ ~ ~ {UUID:[I;1545742422,583157508,-1196881448,-1103755330]}
execute if score all_wool wool matches 1.. if score 5hz gremloop matches 1 as @e[distance=2..11,tag=sculk_eraser,type=allay,limit=2,sort=nearest] at @s facing entity 5c222856-22c2-4704-b8a9-09d8be3607be eyes run function tools:helper/calls/push_looking with storage link:temp temp
execute if score all_wool wool matches 1.. if score 5hz gremloop matches 1 run tp 5c222856-22c2-4704-b8a9-09d8be3607be 0 200 0
execute if score all_wool wool matches 1.. if score 5hz gremloop matches 1 run kill 5c222856-22c2-4704-b8a9-09d8be3607be

#Flags etc.
scoreboard players set end temp 1