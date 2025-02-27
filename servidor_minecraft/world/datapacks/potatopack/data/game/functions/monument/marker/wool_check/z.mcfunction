#iterates along z


#Move+iterate
scoreboard players set x temp -6
scoreboard players add z temp 1
tp @s ~-13 ~ ~1
execute unless score z temp matches 6.. at @s run function game:monument/marker/wool_check/x
execute if score z temp matches 6.. unless score y temp matches 13.. at @s run function game:monument/marker/wool_check/y
