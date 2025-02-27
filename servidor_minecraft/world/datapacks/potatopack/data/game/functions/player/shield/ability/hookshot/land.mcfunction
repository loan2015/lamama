#Initiation for the hookshot

#Bells and whistles
scoreboard players set @s shield_cd 22
#execute at @s run playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 0.2 1

#set score
execute if score n temp matches ..240 run scoreboard players set @s hookshot 16
execute unless score n temp matches ..240 run scoreboard players operation temp temp = n temp
execute unless score n temp matches ..240 run scoreboard players remove temp temp 300
execute unless score n temp matches ..240 run scoreboard players operation temp temp *= -1 numbers
execute unless score n temp matches ..240 run scoreboard players operation temp temp /= 4 numbers
execute unless score n temp matches ..240 run scoreboard players operation @s hookshot = temp temp

#Check if mounted, if not, mount
scoreboard players set temp temp 1
execute on passengers run scoreboard players set temp temp 0
data modify storage link:temp temp.Rot set value {}
execute store result storage link:temp Rot.x float 1 run data get entity @s Rotation[0]
execute store result storage link:temp Rot.y float 1 run data get entity @s Rotation[1]
execute if score temp temp matches 1.. if score @s hookshot matches 1.. at @s run function game:player/shield/ability/hookshot/create_mount with storage link:temp Rot


#flags
tag @s add hookshotted