#Resets shield triggers

function game:player/shield/ability/amethyst/reset
function game:player/shield/ability/lamp/reset
function game:player/shield/ability/leaves/reset
function game:player/spawnpoint_fire/reset
function game:player/shield/ability/pipe/reset
execute as @e[tag=floating_copper,type=marker] at @s run function game:player/shield/ability/floating_copper/kill