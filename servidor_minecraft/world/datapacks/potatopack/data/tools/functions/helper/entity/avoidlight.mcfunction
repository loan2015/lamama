#Makes the mob avoid light like the plague

scoreboard players set x temp 0
scoreboard players set z temp 0

execute positioned ~1 ~ ~ run function tools:helper/calls/getlight
scoreboard players operation x temp = @s lightcall
scoreboard players operation x temp *= -1 numbers
execute positioned ~-1 ~ ~ run function tools:helper/calls/getlight
execute store result entity @s Motion[0] double 0.2 run scoreboard players operation x temp += @s lightcall
execute positioned ~ ~ ~1 run function tools:helper/calls/getlight
scoreboard players operation z temp = @s lightcall
scoreboard players operation z temp *= -1 numbers
execute positioned ~ ~ ~-1 run function tools:helper/calls/getlight
execute store result entity @s Motion[2] double 0.2 run scoreboard players operation z temp += @s lightcall

