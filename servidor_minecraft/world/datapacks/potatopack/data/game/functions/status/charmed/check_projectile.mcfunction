#Checks projectiles to see if owner is charmed
scoreboard players set temp temp 0
$execute if entity @e[distance=..5,limit=1,sort=nearest,tag=link.charmed,nbt={UUID:$(Owner)}] run scoreboard players set temp temp 1
execute if score temp temp matches 1 run kill @s
tag @s add charm_projectile_check