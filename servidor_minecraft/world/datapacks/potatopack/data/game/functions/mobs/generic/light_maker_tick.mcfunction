#5hz on light markers

#tripwire exception
execute if entity @s[tag=!lightregistered] if block ~ ~-1 ~ iron_trapdoor run scoreboard players set @s animation 10
execute if entity @s[tag=!lightregistered] if block ~ ~1 ~ iron_trapdoor run scoreboard players set @s animation 10
execute if entity @s[tag=!lightregistered] if block ~1 ~ ~ iron_trapdoor run scoreboard players set @s animation 10
execute if entity @s[tag=!lightregistered] if block ~-1 ~ ~ iron_trapdoor run scoreboard players set @s animation 10
execute if entity @s[tag=!lightregistered] if block ~ ~ ~1 iron_trapdoor run scoreboard players set @s animation 10
execute if entity @s[tag=!lightregistered] if block ~ ~ ~-1 iron_trapdoor run scoreboard players set @s animation 10
execute if entity @s[tag=!lightregistered,scores={animation=10}] run tag @s add slowboy
tag @s add lightregistered

#Cooldown
execute if score @s animation matches 1.. run scoreboard players remove @s animation 1
execute if score @s animation matches 1.. run return 2

#Slow after cooldown
execute if entity @s[tag=slowboy] if score 1hz gremloop matches 6..10 run return 3
execute if entity @s[tag=slowboy] if score 1hz gremloop matches 16.. run return 3

#WAiting 1 tick code
scoreboard players set temp temp 0
execute if entity @s[tag=wait_1_tick] run scoreboard players set temp temp 1
execute if score temp temp matches 1 run tag @s remove wait_1_tick
execute if score temp temp matches 1 run return 1

#Light code
execute if block ~ ~ ~ light[level=1] run setblock ~ ~ ~ air
execute if block ~ ~ ~ light[level=2] run setblock ~ ~ ~ light[level=1]
execute if block ~ ~ ~ light[level=3] run setblock ~ ~ ~ light[level=2]
execute if block ~ ~ ~ light[level=4] run setblock ~ ~ ~ light[level=3]
execute if block ~ ~ ~ light[level=5] run setblock ~ ~ ~ light[level=4]
execute if block ~ ~ ~ light[level=6] run setblock ~ ~ ~ light[level=5]
execute if block ~ ~ ~ light[level=5] at @p if entity @a[distance=..0.1,limit=1,sort=nearest,tag=light_mode] at @s run tp @s 0 205 0
execute if block ~ ~ ~ light[level=5] at @p if entity @a[distance=..0.1,limit=1,sort=nearest,tag=light_mode] at @s run kill @s
execute if block ~ ~ ~ light[level=7] run setblock ~ ~ ~ light[level=6]
execute if block ~ ~ ~ light[level=8] run setblock ~ ~ ~ light[level=7]
execute if block ~ ~ ~ light[level=9] run setblock ~ ~ ~ light[level=8]
execute if block ~ ~ ~ light[level=10] run setblock ~ ~ ~ light[level=9]
execute if block ~ ~ ~ light[level=11] run setblock ~ ~ ~ light[level=10]
execute if block ~ ~ ~ light[level=12] run setblock ~ ~ ~ light[level=11]
execute if block ~ ~ ~ light[level=13] run setblock ~ ~ ~ light[level=12]
execute if block ~ ~ ~ light[level=14] run setblock ~ ~ ~ light[level=13]
execute if block ~ ~ ~ light[level=15] run setblock ~ ~ ~ light[level=14]

execute if block ~ ~ ~ air run tp @s 0 205 0
execute if block ~ ~ ~ air run kill @s
