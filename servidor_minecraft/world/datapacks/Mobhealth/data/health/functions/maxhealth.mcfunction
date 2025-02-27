#Finds mob max health
execute store result score @s healthdmax run data get entity @s Health 100
tag @s add spawnhealth