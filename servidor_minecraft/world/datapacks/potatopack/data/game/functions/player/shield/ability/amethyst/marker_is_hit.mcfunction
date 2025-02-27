#Happens when an amethyst marker is hit



#Forceload
execute store result score temp temp run forceload query ~ ~
execute if score temp temp matches 0 run forceload add ~ ~
execute if score temp temp matches 0 run tag @s add force_loaded

#Flags
tag @s add hit
tag @s add expand