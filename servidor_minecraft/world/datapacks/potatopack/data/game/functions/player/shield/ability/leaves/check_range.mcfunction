#checks to see if lef can expaaaand
$execute if entity @e[distance=..$(distance),type=marker,tag=leaves] run tag @s add expand
$execute if entity @s[tag=expand] as @e[distance=..$(distance),type=marker,tag=leaves] run function game:player/shield/ability/leaves/marker_is_hit