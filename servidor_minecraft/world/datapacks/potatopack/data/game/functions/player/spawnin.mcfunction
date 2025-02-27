#activates when a player is on the spawnpad

tp @s 0 239 -40 -90 ~
gamemode adventure @s
spawnpoint @s 0 239 -40 -90
effect give @s instant_health 1 20 true
scoreboard players enable @a difficulty
scoreboard players reset @s area
scoreboard players add @s deaths 0
execute unless entity @s[advancements={game:monument/ability1=true}] run advancement revoke @s through game:monument/root

#flags
tag @s remove visited_monument
tag @s remove visited_a1
tag @s remove visited_a2
tag @s remove visited_a3
tag @s remove visited_a4
tag @s remove visited_a5
tag @s remove visited_a6
tag @s remove visited_mon

scoreboard players set @s music 0
scoreboard players set @s area 0
scoreboard players set @s music_queue 0

#failsafe
stopsound @s