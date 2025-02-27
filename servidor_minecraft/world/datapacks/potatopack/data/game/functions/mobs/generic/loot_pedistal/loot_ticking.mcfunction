#20hz on loot pedistals if players are near

#Update item
$execute if score 1hz gremloop matches 5 unless entity @s[nbt={data:{DeathLootTable:"empty"}}] run loot replace entity @e[distance=..1,type=item_display,tag=loot_pedistal] container.0 loot $(DeathLootTable)

#Exceptions for shield upgrade
execute if score 1hz gremloop matches 6 if entity @s[tag=shield_upgrade] on vehicle run data merge entity @s {teleport_duration:20,transformation:[0.7000f,0.0000f,0.0000f,-0.3435f,0.0000f,0.6761f,-0.1812f,1.0000f,0.0000f,0.1812f,0.6761f,-0.2500f,0.0000f,0.0000f,0.0000f,1.0000f]}

#animation
execute on vehicle at @s run tp @s ~ ~ ~ ~-2.3 ~
execute if entity @s[tag=shield_upgrade] if entity @a[distance=..6] on vehicle at @s facing entity @p eyes facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ 0

scoreboard players operation temp temp = 4s gremloop
execute if score 4s gremloop matches 40.. run scoreboard players operation temp temp *= -1 numbers
execute if score 4s gremloop matches 40.. run scoreboard players add temp temp 80
scoreboard players add temp temp 120

scoreboard players operation temp2 temp = 4s gremloop
execute if score 4s gremloop matches 40.. run scoreboard players operation temp2 temp *= -1 numbers
execute if score 4s gremloop matches 40.. run scoreboard players add temp2 temp 80
scoreboard players add temp2 temp 60

execute store result storage link:temp temp.y float 0.005 run scoreboard players get temp2 temp
execute store result storage link:temp temp.scale float 0.004 run scoreboard players get temp temp
execute unless entity @s[tag=shield_upgrade] on vehicle run function game:mobs/generic/loot_pedistal/scale_interaction with storage link:temp temp

