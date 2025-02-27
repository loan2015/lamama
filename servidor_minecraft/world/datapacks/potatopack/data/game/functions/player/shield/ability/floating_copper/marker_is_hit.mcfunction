#happens when the marker is summoned for the first time

#setblock
setblock ~ ~ ~ iron_trapdoor[half=top]

#forceload
function tools:helper/calls/add_forceload

#Light call
function tools:helper/calls/getlight

#sound
playsound minecraft:block.iron_door.open record @a ~ ~ ~ 0.4 0.8

#expand
execute positioned ~ ~ ~1 if block ~ ~ ~ tripwire summon marker run function game:player/shield/ability/floating_copper/marker_is_hit
execute positioned ~ ~ ~-1 if block ~ ~ ~ tripwire summon marker run function game:player/shield/ability/floating_copper/marker_is_hit
execute positioned ~1 ~ ~ if block ~ ~ ~ tripwire summon marker run function game:player/shield/ability/floating_copper/marker_is_hit
execute positioned ~-1 ~ ~ if block ~ ~ ~ tripwire summon marker run function game:player/shield/ability/floating_copper/marker_is_hit
execute positioned ~ ~1 ~ if block ~ ~ ~ tripwire summon marker run function game:player/shield/ability/floating_copper/marker_is_hit
execute positioned ~ ~-1 ~ if block ~ ~ ~ tripwire summon marker run function game:player/shield/ability/floating_copper/marker_is_hit

#tags
tag @s add floating_copper
