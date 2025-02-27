#20hz on monument marker

#Markers
execute as @e[distance=..20,tag=prism,type=marker] at @s run function game:monument/marker/prism/prism_core
execute as @e[tag=ray,type=marker] at @s run function game:monument/marker/prism/ray_tick
execute as @e[tag=ray,type=marker] at @s run function game:monument/marker/prism/ray_tick
execute as @e[tag=ray,type=marker] at @s run function game:monument/marker/prism/ray_tick

#Shimmy shimmy ye, shimmy ye, shimmy ya
execute if score 3s gremloop matches 2 positioned 1105 -10 1055 positioned ~ ~ ~-0.0 run function game:monument/marker/make_shimmy
execute if score 3s gremloop matches 4 positioned 1105 -10 1055 positioned ~ ~ ~-1.0 run function game:monument/marker/make_shimmy
execute if score 3s gremloop matches 6 positioned 1105 -10 1055 positioned ~ ~ ~-2.0 run function game:monument/marker/make_shimmy
execute if score 3s gremloop matches 8 positioned 1105 -10 1055 positioned ~ ~ ~-3.0 run function game:monument/marker/make_shimmy
execute if score 3s gremloop matches 10 positioned 1105 -10 1055 positioned ~ ~ ~-4.0 run function game:monument/marker/make_shimmy
execute if score 3s gremloop matches 12 positioned 1105 -10 1055 positioned ~ ~ ~-5.0 run function game:monument/marker/make_shimmy
execute if score 3s gremloop matches 14 positioned 1105 -10 1055 positioned ~ ~ ~-6.0 run function game:monument/marker/make_shimmy
execute if score 3s gremloop matches 16 positioned 1105 -10 1055 positioned ~ ~ ~-7.0 run function game:monument/marker/make_shimmy
execute if score 3s gremloop matches 18 positioned 1105 -10 1055 positioned ~ ~ ~-8.0 run function game:monument/marker/make_shimmy

#particulates
execute if score 5hz gremloop matches 1 positioned ~ ~3 ~ if score all_bonus wool matches 0 run particle firework ~ ~ ~ 5.5 5 5.5 0 2 force
execute positioned ~ ~3 ~ unless score all_bonus wool matches 0 run particle sculk_soul ~ ~ ~ 5.5 5 5.5 0 2 force

#Final animation
execute if score blue wool matches 1 if score red wool matches 1 if score yellow wool matches 1 if score orange wool matches 1 if score purple wool matches 1 if score green wool matches 1 run scoreboard players add all_wool wool 1

execute if score all_wool wool matches 100 run title @a times 0 80 40
execute if score all_wool wool matches 120 run title @a times 0 80 40
execute if score all_wool wool matches 140 run title @a times 0 80 40

execute if score all_wool wool matches 100 run title @a subtitle [{"translate":" ","italic":false}]
execute if score all_wool wool matches 120 run title @a subtitle [{"translate":" ","italic":false}]
execute if score all_wool wool matches 140 run title @a subtitle [{"translate":" ","italic":false}]

execute if score all_wool wool matches 100 run title @a title [{"translate":"notify.monument.complete1","italic":false}]
execute if score all_wool wool matches 120 run title @a title [{"translate":"notify.monument.complete2","italic":false}]
execute if score all_wool wool matches 140 run title @a title [{"translate":"notify.monument.complete3","italic":false}]

execute if score all_wool wool matches 100 as @a at @s run playsound minecraft:sfx.wool_placed record @s ~ ~ ~ 1 1.2
execute if score all_wool wool matches 120 as @a at @s run playsound minecraft:sfx.wool_placed record @s ~ ~ ~ 1 1.5
execute if score all_wool wool matches 140 as @a at @s run playsound minecraft:sfx.wool_placed record @s ~ ~ ~ 1 2

execute if score all_wool wool matches 170 as @a at @s run playsound minecraft:block.respawn_anchor.set_spawn record @s ~ ~ ~ 1 1.2
execute if score all_wool wool matches 170 run tellraw @a [{"translate":"notify.monument.credits1","color":"white","italic":false},{"translate":"notify.monument.credits2","color":"blue","italic":false,"underlined":true,"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/texture-pack/blackcraft-3228201/"}},{"translate":"notify.monument.credits3"},{"translate":"notify.monument.credits4","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://discord.com/invite/ctmc"}},{"translate":"notify.monument.credits5"}]
execute if score all_wool wool matches 170 run function game:monument/spawn_allay_completion

#Shimmy ticky
execute as @e[distance=..32,tag=shimmy,type=marker] if score 10hz gremloop matches 1 at @s run function game:monument/marker/shimmy_tick

#Player welcome, unoptimized lol
title @a[x=1103,y=-11,z=1071,distance=..7,tag=!visited_monument] times 40 100 40
title @a[x=1103,y=-11,z=1071,distance=..7,tag=!visited_monument] title {"translate":"notify.monument.welcome"}
title @a[x=1103,y=-11,z=1071,distance=..7,tag=!visited_monument] subtitle {"translate":"notify.monument.welcome_sub"}
execute as @a[x=1103,y=-11,z=1071,distance=..7,tag=!visited_monument] at @s run playsound minecraft:block.note_block.bell record @s ~ ~ ~ 1 0.5
tag @a[x=1103,y=-11,z=1071,distance=..7,tag=!visited_monument] add visited_monument

#debug
#particle explosion ~ ~ ~ 0 0 0 0 1 force