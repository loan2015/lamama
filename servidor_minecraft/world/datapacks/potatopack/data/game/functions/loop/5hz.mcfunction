#Runs functions at the hz described in the file


#resetbossbars
bossbar set hp1 players
bossbar set hp2 players
bossbar set hp3 players
bossbar set hp4 players
bossbar set hp5 players

#player
execute as @a at @s run function game:player/p5hz

##All mob ticking below
execute as @e[type=marker,tag=light_marker] at @s run function game:mobs/generic/light_maker_tick
execute if score ability1 game matches 1.. as @e[tag=expand,tag=amethyst,type=marker] at @s run function game:player/shield/ability/amethyst/expand
execute as @e[tag=shield_breaker] at @s run function game:mobs/generic/shield_breaker
execute as @e[tag=lightless] at @s run function game:mobs/a1/lightless/lightless
execute as @e[tag=area1_fish,type=silverfish] at @s run function game:mobs/a1/silverfish
execute as @e[tag=area2_spider,type=cave_spider] at @s run function game:mobs/a2/spider_init
execute as @e[tag=area5_knight,type=wither_skeleton] at @s run function game:mobs/a5/knight_tick
#execute as @e[type=enderman] at @s if entity @a[distance=..3,limit=1] run effect give @s slowness 1 10 true

##Mob ticking end




#Amethyst
execute if score amethyst_expand temp matches 0 run scoreboard players set amethyst_pitch temp 7
scoreboard players set amethyst_expand temp 0