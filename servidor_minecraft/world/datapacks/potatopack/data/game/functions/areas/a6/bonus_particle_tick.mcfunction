#Ticking on bonus particles

particle minecraft:large_smoke ~ ~ ~ 0.1 0.25 0.1 0.03 2

execute at @s run tp @s ~ ~0.3 ~

scoreboard players add @s temp 1
execute if score @s temp matches 50.. run kill @s