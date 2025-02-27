
$particle minecraft:cloud ~ ~ ~ 0 0 0 $(spread) 1 force @a[distance=..32]
$particle minecraft:cloud ~ ~ ~ 0 0 0 $(spread) 1


scoreboard players add pipe_spread temp 2
execute store result storage link:temp temp.spread float 0.01 run scoreboard players get pipe_spread temp
scoreboard players remove pipe_loop temp 1
execute if score pipe_loop temp matches 1.. positioned ~ ~0.3 ~ run function game:player/shield/ability/pipe/particle_loop with storage link:temp temp