#Happens when a pipe is hit first time

#score
scoreboard players add @s pipe 2

#Forceload
execute store result score temp temp run forceload query ~ ~
execute if score temp temp matches 0 run forceload add ~ ~
execute if score temp temp matches 0 run tag @s add force_loaded

#Flags
tag @s add hit
