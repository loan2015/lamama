#Happens when a dash ought to trigger

#Bells and whistles
playsound minecraft:entity.ender_dragon.flap record @a ~ ~ ~ 1 1

#set cd
scoreboard players set @s shield_cd 60

#Movement
tp @s @s

scoreboard players set $strength delta.api.launch 8000
execute unless entity @s[x_rotation=-90..-30] at @s rotated ~ ~-30 run function delta:api/launch_looking
execute if entity @s[x_rotation=-90..-30] at @s run function delta:api/launch_looking

#scoreboard players set $y delta.api.launch 5000
#function delta:api/launch_xyz

