#particles for stunned status
$execute unless entity @s[dy=0] positioned ~ ~ ~ rotated $(rot) $(rot2) run particle wax_on ^ ^ ^0.4 0 0 0 0 1 force

scoreboard players remove n temp 1
execute if score n temp matches 1.. if entity @s[dy=0] positioned ~ ~0.1 ~ run function game:status/sunned/particles with storage link:status temp
