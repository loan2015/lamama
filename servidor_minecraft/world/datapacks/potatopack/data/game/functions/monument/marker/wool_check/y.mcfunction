#iterates along y


#Move+iterate
scoreboard players set x temp -6
scoreboard players set z temp -5
scoreboard players add y temp 1
tp @s ~ ~1 ~-11
execute unless score y temp matches 13.. at @s run function game:monument/marker/wool_check/x
