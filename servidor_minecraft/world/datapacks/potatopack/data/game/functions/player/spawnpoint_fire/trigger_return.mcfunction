#Teleports the player to their spawnpoint

#Reset
scoreboard players set @s campfire 0

#Validity check
scoreboard players set fail temp 0
execute if entity @e[distance=..16,limit=1,type=#minecraft:hasai,type=!wolf,type=!player,tag=!link.charmed,tag=!exception,tag=!blocking_slime] run scoreboard players set fail temp 1
execute if block ~ ~-1 ~ lava run scoreboard players set fail temp 1
execute if block ~ ~ ~ lava run scoreboard players set fail temp 1
execute if score fail temp matches 1.. run tellraw @s {"translate":"soulfire_spawnpoint.fail"}
execute if score fail temp matches 1.. run playsound block.note_block.hat record @s ~ ~ ~ 1 0.5
execute if score fail temp matches 1.. run return 1

#Get spawnpoint
data modify storage link:temp temp.Pos set value [0.0d,0.0d,0.0d]
execute store result storage link:temp temp.Pos[0] double 1 run data get entity @s SpawnX
execute store result storage link:temp temp.Pos[1] double 1 run data get entity @s SpawnY
execute store result storage link:temp temp.Pos[2] double 1 run data get entity @s SpawnZ

#small res
effect give @s resistance 1 4 true
effect give @s blindness 2 0 true

#Move to location
summon marker ~ ~ ~ {UUID:[I;888322522,-630046199,-2062590807,1183264420]}
data modify entity 34f2b9da-da72-4209-850f-5ca946872ea4 Pos set from storage link:temp temp.Pos
tp @s 34f2b9da-da72-4209-850f-5ca946872ea4
kill 34f2b9da-da72-4209-850f-5ca946872ea4

#effects
execute at @s run playsound entity.shulker.teleport record @s ~ ~ ~ 1 1
execute at @s run particle flash ~ ~ ~ 0 0 0 0 1 force
