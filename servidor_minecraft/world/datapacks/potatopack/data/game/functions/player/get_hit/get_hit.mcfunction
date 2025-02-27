#Happens when the player is hit by anything


#flags
advancement revoke @s only game:get_hit
advancement revoke @s only game:shield_disabled/10
advancement revoke @s only game:shield_disabled/20
advancement revoke @s only game:shield_disabled/30
advancement revoke @s only game:shield_disabled/40
advancement revoke @s only game:shield_disabled/50
advancement revoke @s only game:shield_disabled/60
advancement revoke @s only game:shield_disabled/70
advancement revoke @s only game:shield_disabled/80
advancement revoke @s only game:shield_disabled/90
advancement revoke @s only game:shield_disabled/100
advancement revoke @s only game:shield_disabled/150
advancement revoke @s only game:shield_disabled/200
advancement revoke @s only game:shield_disabled/300
advancement revoke @s only game:shield_disabled/400

#Push back a3 zombies
data modify storage link:temp temp.scaler set value 0.4f
execute if entity @s[tag=blocking] as @e[distance=..2,type=zombie,tag=area3_zombie,limit=1,sort=nearest] at @s facing entity @p eyes rotated ~ 10 facing ^ ^ ^-1 run function tools:helper/calls/push_looking with storage link:temp temp
data modify storage link:temp temp.scaler set value 0.45f
execute if entity @s[tag=blocking] as @e[distance=..2,tag=take_shield_kb,limit=1,sort=nearest] at @s facing entity @p eyes rotated ~ 10 facing ^ ^ ^-1 run function tools:helper/calls/push_looking with storage link:temp temp
execute if entity @s[tag=blocking] as @e[distance=..2,tag=area6_slime,limit=1,sort=nearest] run tag @s add link.stunned
execute if entity @s[tag=blocking] as @e[distance=..2,tag=area6_slime,limit=1,sort=nearest] run scoreboard players add @s link.stunned 60


#flag
tag @s add just_hit