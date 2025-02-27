#Removes forceloads
execute if entity @s[tag=force_loaded] run forceload remove ~ ~
tag @s remove force_loaded