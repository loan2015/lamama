#Starts the map as the player

#Mod warn failsafe
scoreboard players set $version suso.mw 0
execute store result score #temp suso.mw run data get entity @s DataVersion
execute unless score #temp suso.mw = $valid_version suso.mw run scoreboard players set $version suso.mw 1

#Failure
scoreboard players set fail temp 0
execute if score $commands suso.mw matches 1.. run scoreboard players set fail temp 1
execute if score $fabric suso.mw matches 1.. run scoreboard players set fail temp 1
execute if score $forge suso.mw matches 1.. run scoreboard players set fail temp 1
execute if score $optifine suso.mw matches 1.. run scoreboard players set fail temp 1
execute if score $spigot suso.mw matches 1.. run scoreboard players set fail temp 1
execute if score $version suso.mw matches 1.. run scoreboard players set fail temp 1

execute if score fail temp matches 1.. run tellraw @s [{"translate":"start.error"},{"text":"discord.gg/ctmc","color":"blue","italic":false,"underlined":true,"clickEvent":{"action":"open_url","value":"http://discord.gg/ctmc"}}]
execute if score fail temp matches 1.. run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.5
execute if score fail temp matches 1.. run return 1

#Actual starting
tp @s 1094 71 1181 180 80
spawnpoint @s 1105 -14 1182 90
effect give @s blindness 2 0 true
effect give @s levitation 1 254 true
effect clear @s weakness
effect give @s instant_health 1 9 true
clear @s dried_kelp
clear @s #music_discs
stopsound @s record
scoreboard players set @s health_charge 0
scoreboard players set @s health_time 0
loot replace entity @s hotbar.8 loot game:health_flask

playsound minecraft:entity.skeleton_horse.death record @s ~ ~100 ~ 1 0.7 1
advancement revoke @s only game:start_map
advancement revoke @s only game:start_map2