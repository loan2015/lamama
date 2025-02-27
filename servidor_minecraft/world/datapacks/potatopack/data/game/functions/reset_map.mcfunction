#Resets most map stuff

#Abilities
scoreboard players set ability1 game 0
scoreboard players set ability2 game 0
scoreboard players set ability3 game 0
scoreboard players set ability4 game 0
scoreboard players set ability5 game 0
scoreboard players set ability6 game 0

#Wool
scoreboard players set yellow wool 0
scoreboard players set purple wool 0
scoreboard players set green wool 0
scoreboard players set blue wool 0
scoreboard players set orange wool 0
scoreboard players set red wool 0

scoreboard players set bonus1 wool 0
scoreboard players set bonus2 wool 0
scoreboard players set bonus3 wool 0
scoreboard players set bonus4 wool 0
scoreboard players set bonus5 wool 0
scoreboard players set bonus6 wool 0

scoreboard players set all_wool wool 0
scoreboard players set all_bonus wool 0

execute as d6c00078-6f0e-42db-aac7-0f7458f5aa42 at @s run fill ~-6 ~-2 ~-5 ~7 ~12 ~5 air replace #minecraft:prisms

execute as @e[type=allay] at @s run function tools:helper/entity/voidkill

#flags
tag @a remove visited_monument
tag @a remove visited_a1
tag @a remove visited_a2
tag @a remove visited_a3
tag @a remove visited_a4
tag @a remove visited_a5
tag @a remove visited_a6
tag @a remove visited_mon
tag @a remove bonus_notify
tag @a remove bonus_complete
tag @a remove leaves_notify
tag @a remove campfire_trigger
tag @a remove sculk.notify
tag @a remove rats.notify
tag @a remove slime.notify
tag @a remove knight.notify
tag @s remove player_trigger_notify
tag @a remove king_passive
tag @a remove light_mode
tag @a remove blitz_mode

scoreboard players set @a music 0
scoreboard players set @a area 0
scoreboard players set @a music_queue 0
scoreboard players set max_damage game 0
scoreboard players set hp_up game 0

#Advancements
advancement revoke @a through game:monument/root
advancement revoke @a only game:crown
advancement revoke @a only game:crown2
advancement revoke @a only game:slime_hit
advancement revoke @a only game:knight_hit


#shield triggers
function game:reset_shield_triggers

#Bonus monument
forceload add 1147 1070 1157 1090
clone 59 39 -10 70 49 8 1147 -14 1070

#Difficulty and other settings
difficulty normal