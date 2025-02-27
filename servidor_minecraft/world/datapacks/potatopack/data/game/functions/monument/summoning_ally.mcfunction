#Spawns allays after monument is complete
$summon allay ~ ~ ~ {Invulnerable:1b,Glowing:1b,DeathLootTable:"empty",PersistenceRequired:1b,CanPickUpLoot:0b,CanDuplicate:0b,Tags:["sculk_eraser"],Brain:{memories:{"minecraft:liked_player":{value:$(UUID)}}}}
execute if entity @s[tag=red] run team join red @e[type=allay,limit=1,sort=nearest]
execute if entity @s[tag=purple] run team join light_purple @e[type=allay,limit=1,sort=nearest]
execute if entity @s[tag=yellow] run team join yellow @e[type=allay,limit=1,sort=nearest]
execute if entity @s[tag=green] run team join green @e[type=allay,limit=1,sort=nearest]
execute if entity @s[tag=blue] run team join blue @e[type=allay,limit=1,sort=nearest]
execute if entity @s[tag=orange] run team join gold @e[type=allay,limit=1,sort=nearest]

execute store result score @e[type=allay,limit=1,sort=nearest] temp run random value 1..30