#20hz on actove pipe markers

#particles


scoreboard players operation pipe_loop temp = @s pipe_vel
execute if score pipe_loop temp matches 5000.. run scoreboard players remove pipe_loop temp 5000
execute unless score pipe_loop temp matches 5000.. run scoreboard players set pipe_loop temp 0
scoreboard players operation pipe_loop temp /= 2000 numbers
scoreboard players add pipe_loop temp 1
scoreboard players set pipe_spread temp 7
execute store result storage link:temp temp.spread float 0.01 run scoreboard players get pipe_spread temp
execute if score 10hz gremloop matches 1 positioned ~ ~0.3 ~ run function game:player/shield/ability/pipe/particle_loop with storage link:temp temp

#sound
playsound minecraft:block.candle.extinguish record @a ~ ~ ~ 1 1

#Whee!
scoreboard players operation pipe_vel temp = @s pipe_vel
execute positioned ~ ~0.3 ~ as @a[distance=..1.3,predicate=!game:sneaking] at @s unless score @s recent_push matches 1.. run function game:player/shield/ability/pipe/push_player
execute as @a[distance=..3] at @s unless score @s recent_push matches 1.. run effect give @s slow_falling 1 0 true

#failsafe/initiation
execute if score @s pipe matches 30 run scoreboard players set @s pipe 31