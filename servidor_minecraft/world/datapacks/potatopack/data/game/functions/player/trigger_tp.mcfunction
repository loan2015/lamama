#Teleports the player to the closest valid teammate

#reset
scoreboard players set @s teleport_to_teammate 0

#Validity check
scoreboard players set fail temp 0
execute if entity @e[distance=..16,limit=1,type=#minecraft:hasai,type=!wolf,type=!player,tag=!link.charmed,tag=!exception,tag=!blocking_slime] run scoreboard players set fail temp 1
execute if block ~ ~-1 ~ lava run scoreboard players set fail temp 1
execute if block ~ ~ ~ lava run scoreboard players set fail temp 1
execute unless entity @a[distance=10..,limit=1,sort=furthest,gamemode=!spectator,gamemode=!creative] run scoreboard players set fail temp 2
execute if score fail temp matches 1.. run tellraw @s {"translate":"soulfire_spawnpoint.fail"}
execute if score fail temp matches 1.. run playsound block.note_block.hat record @s ~ ~ ~ 1 0.5
execute if score fail temp matches 1.. run return 1

#Tp
tp @s @a[distance=10..,limit=1,sort=furthest,gamemode=!spectator,gamemode=!creative]

#small blind
effect give @s blindness 2 0 true


#effects
execute at @s run playsound entity.shulker.teleport record @s ~ ~ ~ 1 1
execute at @s run particle flash ~ ~ ~ 0 0 0 0 1 force