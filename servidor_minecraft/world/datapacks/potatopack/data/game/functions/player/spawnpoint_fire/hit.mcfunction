#Happens as the marker at the campfire being added as a spawnpoint

#Tell players of the greatness
tellraw @a {"translate":"soulfire_spawnpoint.unlock"}
tellraw @a[tag=!campfire_trigger] {"translate":"soulfire_spawnpoint.trigger"}
tag @a[tag=!campfire_trigger] add campfire_trigger

#light
execute at @s run setblock ~ ~ ~ soul_campfire[lit=true]
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.1 20 force
execute at @a facing entity @s eyes run playsound minecraft:item.firecharge.use ambient @p ^ ^ ^3 1 0.7

#spawnpointing
execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:light_replace run spawnpoint @a ~ ~ ~
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:light_replace run spawnpoint @a ~ ~ ~
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:light_replace run spawnpoint @a ~ ~ ~
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:light_replace run spawnpoint @a ~ ~ ~

#flags and load
tag @a[tag=spawnpoint] add stoptickingmsg
tag @a[tag=spawnpoint] add stoptickingmsg_flag
tag @s add soul_campfire
execute at @s run function tools:helper/calls/add_forceload
