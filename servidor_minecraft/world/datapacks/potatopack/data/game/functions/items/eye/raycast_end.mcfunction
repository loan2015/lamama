#Happens on the mob the raycast ends on

execute if entity @s[type=#bb:undead] run effect give @s instant_damage 20 100 true
execute unless entity @s[type=#bb:undead] run effect give @s instant_health 20 100 true

tag @s add link.charmed
scoreboard players add @s link.charmed 1200
execute at @a facing entity @s eyes as @p positioned ^ ^ ^5 run playsound minecraft:entity.evoker.prepare_wololo ambient @s ~ ~ ~ 1 0.9
execute at @a facing entity @s eyes as @p positioned ^ ^ ^5 run playsound minecraft:entity.bee.death ambient @s ~ ~ ~ 1 0.5
particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 0.2 20 force
particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 0.2 30 normal

scoreboard players set end temp 1