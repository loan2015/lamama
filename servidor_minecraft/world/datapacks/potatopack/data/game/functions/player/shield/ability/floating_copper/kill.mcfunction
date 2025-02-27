#kills the marker
kill @s
setblock ~ ~ ~ tripwire

function tools:helper/calls/remove_forceload

playsound minecraft:block.iron_door.close record @a ~ ~ ~ 0.4 0.8
