#Looks for a target for the charmed enemy
damage @s[type=drowned] 0 game:no_scale_no_i_frames_no_knockback by @e[distance=..16,limit=1,sort=nearest,type=#minecraft:hasai,tag=!exception,type=!player,tag=!link.charmed,type=!wolf,type=!drowned]
damage @s[type=piglin_brute] 0 game:no_scale_no_i_frames_no_knockback by @e[distance=..16,limit=1,sort=nearest,type=#minecraft:hasai,tag=!exception,type=!player,tag=!link.charmed,type=!wolf,type=!piglin_brute]
damage @s[type=!drowned,type=!piglin_brute] 0 game:no_scale_no_i_frames_no_knockback by @e[distance=..16,limit=1,sort=nearest,type=#minecraft:hasai,tag=!exception,type=!player,tag=!link.charmed,type=!wolf]
scoreboard players set @s link.charmed.search 10