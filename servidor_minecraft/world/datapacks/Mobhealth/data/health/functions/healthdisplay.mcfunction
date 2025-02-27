#Finds entities to update
execute as @e[distance=..16,nbt={HurtTime:10s},tag=!exception] at @s run function health:healthupdate
scoreboard players reset @s ouchie