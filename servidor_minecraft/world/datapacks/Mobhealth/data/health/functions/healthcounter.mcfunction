#Remove entity health diplay if some time has passed
scoreboard players add @e[tag=ouchie] healthcounter 1
execute as @e[tag=ouchie,scores={healthcounter=15}] run data merge entity @s {CustomNameVisible:0b}