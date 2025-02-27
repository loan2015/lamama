#This function is run on all players at the hz in the filename



#bossbar code
execute store result score maxhp temp run attribute @s generic.max_health get 100
execute store result score hp temp run scoreboard players get @s health

scoreboard players operation hp temp *= 10000 numbers
scoreboard players operation hp temp /= maxhp temp

execute if score hp temp matches 30..41 run bossbar set hp4 players @s
execute if score hp temp matches 20..29 run bossbar set hp3 players @s
execute if score hp temp matches ..19 run bossbar set hp1 players @s

#Starting advancement
execute unless entity @s[x=11,y=245,z=-24,distance=..60] if entity @s[advancements={game:monument/root=false}] run advancement grant @s only game:monument/root