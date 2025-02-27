#Happens on the mob that spawn from the arrow spawner, make arrow

summon arrow ~ ~ ~ {NoGravity:1b,Glowing:1b,pickup:0b,life:1180,damage:2.52d,PierceLevel:0b,Tags:["arrow_init","green_arrow"]}
team join dark_green @e[distance=..0.5,type=arrow,limit=1,sort=nearest]
data modify storage link:mobs Motion.scaler set value 0.7f
execute as @e[distance=..0.5,type=arrow,limit=1,sort=nearest] facing entity @p[gamemode=!spectator] feet facing ^ ^1 ^12 run function tools:helper/calls/push_looking with storage link:mobs Motion
playsound minecraft:entity.arrow.shoot hostile @a ~ ~ ~ 2 1

data modify entity @e[distance=..0.5,type=arrow,limit=1,sort=nearest] damage set from entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base

tag @s remove spawn_arrow
function tools:helper/entity/voidkill

