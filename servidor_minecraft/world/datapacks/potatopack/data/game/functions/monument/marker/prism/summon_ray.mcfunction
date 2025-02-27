#happens on the newly summoned ray

tag @s add ray
execute at @s facing entity d6c00078-6f0e-42db-aac7-0f7458f5aa42 eyes facing ^ ^ ^-0.1 run tp @s ~ ~ ~ ~ ~
execute if score blue temp matches 1 run tag @s add blue
execute if score green temp matches 1 run tag @s add green
execute if score orange temp matches 1 run tag @s add orange
execute if score red temp matches 1 run tag @s add red
execute if score yellow temp matches 1 run tag @s add yellow
execute if score purple temp matches 1 run tag @s add purple

execute if score blue temp matches 1 run scoreboard players set blue wool 1
execute if score green temp matches 1 run scoreboard players set green wool 1
execute if score orange temp matches 1 run scoreboard players set orange wool 1
execute if score red temp matches 1 run scoreboard players set red wool 1
execute if score yellow temp matches 1 run scoreboard players set yellow wool 1
execute if score purple temp matches 1 run scoreboard players set purple wool 1