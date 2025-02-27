#Iterates along x
#~-6 ~-2 ~-5 ~7 ~12 ~5

#check
execute if block ~ ~ ~ #minecraft:prisms align xyz unless entity @e[dx=0,dy=0,dz=0,type=marker,tag=prism] positioned ~0.5 ~0.5 ~0.5 summon marker run function game:monument/marker/wool_check/place

#Move+iterate
scoreboard players add x temp 1
execute unless score x temp matches 8.. run tp @s ~1 ~ ~
execute unless score x temp matches 8.. at @s run function game:monument/marker/wool_check/x
execute if score x temp matches 8.. unless score z temp matches 6.. at @s run function game:monument/marker/wool_check/z
