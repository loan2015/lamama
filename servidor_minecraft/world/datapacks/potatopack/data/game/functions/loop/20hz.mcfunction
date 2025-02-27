#Runs functions at the hz described in the file

execute as @a at @s run function game:player/p20hz

execute store result storage link:stunstar temp.damage float 0.01 run scoreboard players get max_damage game 

##All mob ticking below
execute as @e[type=slime,tag=blocking_slime] at @s unless entity @a[distance=..20,tag=blocking] run function tools:helper/entity/voidkill
execute as @e[tag=hookshot_display,type=block_display] at @s unless predicate game:mounted run kill @s
execute as @e[tag=leaves,type=marker] at @s run function game:player/shield/ability/leaves/marker_tick
execute as @e[tag=flower,type=marker] at @s run function game:player/shield/ability/leaves/flower/marker_tick
execute as @e[tag=pipe,type=marker] at @s run function game:player/shield/ability/pipe/marker_tick
execute as @e[tag=floating_copper,type=marker] at @s run function game:player/shield/ability/floating_copper/marker_tick
execute as @e[tag=loot_pedistal,tag=playernear,type=marker] at @s run function game:mobs/generic/loot_pedistal/loot_ticking with entity @s data
execute as d6c00078-6f0e-42db-aac7-0f7458f5aa42 if entity @s[tag=playernear] at @s run function game:monument/marker/tick
execute as @e[type=wolf,tag=!tame] at @s summon wolf run function game:mobs/generic/wolf_spawn
execute as @e[tag=link.stun_star,type=marker,predicate=!game:rider] at @s run function game:items/stunner/land with storage link:stunstar temp
execute as @e[type=armor_stand,tag=hpnumber] at @s run function health:hpnumber
execute as @e[tag=link.charmed] at @s run function game:status/charmed/charmed_tick
execute as @e[tag=link.stunned] at @s run function game:status/sunned/stunned_tick
execute as @e[type=slime,tag=!slime] run function tools:helper/entity/voidkill
execute as @e[type=magma_cube,tag=!slime] run function tools:helper/entity/voidkill
execute as @e[type=magma_cube,tag=area6_slime,tag=playernear] at @s run function game:mobs/a5/cube_tickle
execute as @e[type=vex,tag=area6_vex,tag=playernear] at @s run function game:mobs/a6/vex_tick
execute as @e[type=zombie,tag=spawn_arrow] at @s run function game:mobs/generic/arrow_spawner/ticking
execute as @e[type=item,tag=!item_registered] at @s run function game:mobs/generic/register_item
execute as @e[type=allay,tag=sculk_eraser] at @s run function game:mobs/generic/allay/tick
kill @e[type=experience_orb]
##Mob ticking end

#Health branch
function health:health

#Lobby branch
execute if entity @a[x=15,y=242,z=-49,distance=..30,limit=1] run function game:lobby/tick

#Final bonus area
execute if score $fbonus_tick temp matches 1.. run function game:areas/a6/bonus_tick

#Bonus monument
particle minecraft:dragon_breath 1157.5 -11.5 1084.5 .4 .4 .4 0 1 force

#Bossbars
execute if score 1hz gremloop matches 1 run bossbar set hp1 name {"text":"a","font":"minecraft:hp"}
execute if score 1hz gremloop matches 3 run bossbar set hp1 name {"text":"b","font":"minecraft:hp"}
execute if score 1hz gremloop matches 5 run bossbar set hp1 name {"text":"c","font":"minecraft:hp"}
execute if score 1hz gremloop matches 7 run bossbar set hp1 name {"text":"d","font":"minecraft:hp"}
execute if score 1hz gremloop matches 9 run bossbar set hp1 name {"text":"e","font":"minecraft:hp"}
execute if score 1hz gremloop matches 11 run bossbar set hp1 name {"text":"f","font":"minecraft:hp"}
execute if score 1hz gremloop matches 13 run bossbar set hp1 name {"text":"e","font":"minecraft:hp"}
execute if score 1hz gremloop matches 15 run bossbar set hp1 name {"text":"d","font":"minecraft:hp"}
execute if score 1hz gremloop matches 17 run bossbar set hp1 name {"text":"c","font":"minecraft:hp"}
execute if score 1hz gremloop matches 18 run bossbar set hp1 name {"text":"b","font":"minecraft:hp"}
execute if score 1hz gremloop matches 20 run bossbar set hp1 name {"text":"a","font":"minecraft:hp"}

#lamp cooldown
scoreboard players remove $lamp_cooldown temp 1
execute if score $lamp_cooldown temp matches ..0 run scoreboard players set $lamp_cooldown temp 0



function game:areas/areas_core
function game:sidebar
tag @a remove just_hit