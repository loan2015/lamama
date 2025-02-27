#unloads the spot

fill ~3 ~1 ~3 ~-3 ~ ~-3 air replace #minecraft:flower_blocks
clone 4 200 -30 4 200 -30 ~ ~ ~
function tools:helper/calls/remove_forceload
kill @s