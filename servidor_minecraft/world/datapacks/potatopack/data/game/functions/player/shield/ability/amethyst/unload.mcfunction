#Unloads the markers

#light
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace light

#Forceload
execute if entity @s[tag=force_loaded] run forceload remove ~ ~

#Flags
tag @s remove force_loaded
tag @s remove hit
tag @s remove expand