#Unloads the markers

#blocks
fill ~22 ~22 ~22 ~-22 ~-14 ~-22 air replace #minecraft:remove_leaves

#Forceload
execute if entity @s[tag=force_loaded] run forceload remove ~ ~

#Flags
tag @s remove force_loaded
