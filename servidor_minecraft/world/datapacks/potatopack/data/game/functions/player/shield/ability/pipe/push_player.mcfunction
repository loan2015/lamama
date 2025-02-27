#pushes the player

tp @s @s
scoreboard players set @s recent_push 10
scoreboard players operation $y delta.api.launch = pipe_vel temp
function delta:api/launch_xyz

scoreboard players set @s land_softly 100