#Unloads the markers

#scores
scoreboard players set @s pipe 0

#Forceload
execute if entity @s[tag=force_loaded] run forceload remove ~ ~

#Flags
tag @s remove force_loaded
tag @s remove hit
