#Runs functions at the hz described in the file

execute as @a at @s run function game:player/p1hz

#Dev tools
execute if entity @a[limit=1,gamemode=!adventure,gamemode=!survival] as @a[limit=1,sort=arbitrary,nbt={SelectedItem:{id:"minecraft:bee_spawn_egg"}}] at @s as @e[distance=..100,type=marker,tag=amethyst] at @s run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute if entity @a[limit=1,gamemode=!adventure,gamemode=!survival] as @a[limit=1,sort=arbitrary,nbt={SelectedItem:{id:"minecraft:bee_spawn_egg"}}] at @s as @e[distance=..100,type=marker,tag=leaves] at @s run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute if entity @a[limit=1,gamemode=!adventure,gamemode=!survival] as @a[limit=1,sort=arbitrary,nbt={SelectedItem:{id:"minecraft:bee_spawn_egg"}}] at @s as @e[distance=..100,type=marker,tag=pipe] at @s run particle explosion ~ ~ ~ 0 0 0 0 1 force

##All mob ticking below
execute as @e[type=arrow,tag=green_arrow] run function game:mobs/generic/arrow_spawner/arrow_ticking
effect clear @e[type=wolf] wither
effect clear @e[type=wolf] poison

tag @e[tag=playernear] remove playernear
execute as @a at @s run tag @e[distance=..32,tag=detect_player] add playernear
##Mob ticking end

#Bonus monument 
execute positioned 1157 -12 1084 if loaded ~ ~ ~ if entity @a[distance=..16,tag=!bonus_complete] run function game:monument/bonus/bonus_tick

#Final bonus area
scoreboard players set $fbonus_tick temp 0
execute if entity @a[x=1143,y=-4,z=988,dx=16,dy=80,dz=18] run scoreboard players set $fbonus_tick temp 1

#failsafes for shadow arches as I am goofy
tag @e[tag=disable_shield_40] add shield_breaker
tag @e[tag=disable_shield_30] add shield_breaker
tag @e[tag=disable_shield_20] add shield_breaker

#Write health upgrades
scoreboard players operation temp temp = hp_up game
scoreboard players operation temp temp *= 2 numbers
scoreboard players add temp temp 20
execute store result storage link:temp temp.hp float 1 run scoreboard players get temp temp
function game:player/write_hp_upgrades with storage link:temp temp

#team
team join friendly_player @a
#team join unkilled @a[scores={deaths=0}]