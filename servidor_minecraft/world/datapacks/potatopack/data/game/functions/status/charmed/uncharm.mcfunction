#Uncharms the enemy
scoreboard players set @s link.charmed 0
tag @s remove link.charmed
effect clear @s glowing
effect clear @s resistance
scoreboard players set @s link.charmed.search 0
function game:status/charmed/unweaken
team leave @s
attribute @s generic.follow_range modifier remove 919fa66b-a8b4-47dc-bdf3-8ae94e522c96