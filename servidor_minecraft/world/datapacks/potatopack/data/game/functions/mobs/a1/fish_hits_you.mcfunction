#Pushes you when fish hits
advancement revoke @s only game:fish_dmg
scoreboard players set $strength delta.api.launch 5000
execute at @s facing entity @e[distance=..10,type=silverfish,limit=1,sort=nearest] eyes rotated ~ 10 facing ^ ^ ^-1 run function delta:api/launch_looking