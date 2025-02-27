#resets all soul campfires
execute as @e[tag=soul_campfire,type=marker] at @s run function game:player/spawnpoint_fire/unload
