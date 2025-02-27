#On the marker to set spawnpoints


#spawnpointing, used to only do it for @a[tag=spawnpoint]
execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:light_replace run spawnpoint @a ~ ~ ~
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:light_replace run spawnpoint @a ~ ~ ~
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:light_replace run spawnpoint @a ~ ~ ~
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:light_replace run spawnpoint @a ~ ~ ~

#tell, used to only be for @a[tag=spawnpoint,tag=!stoptickingmsg]
tellraw @a[tag=!stoptickingmsg] {"translate":"soulfire_spawnpoint.set"}

#bells and wistles
execute at @s if entity @a[tag=spawnpoint,tag=!stoptickingmsg,limit=1] align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.07 20 force
execute at @a[tag=spawnpoint,tag=!stoptickingmsg,limit=1,sort=nearest] facing entity @s eyes run playsound minecraft:item.firecharge.use ambient @p ^ ^ ^3 1 0.7

#flaggies
scoreboard players set temp temp 1
execute if entity @a[tag=spawnpoint,tag=!stoptickingmsg] run scoreboard players set temp temp 0
tag @a add stoptickingmsg
tag @a add stoptickingmsg_flag
execute if score temp temp matches 1 run tag @a[tag=spawnpoint] remove spawnpoint
