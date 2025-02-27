#unloads campfires
execute at @s run function tools:helper/calls/remove_forceload
setblock ~ ~ ~ soul_campfire[lit=false]
kill @s