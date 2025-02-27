#5hz on lightless mobs

function tools:helper/calls/getlight

execute if entity @s[tag=!iniate_lightless] run tag @s add darken
execute if entity @s[tag=!iniate_lightless] run effect give @s speed infinite 2 true
execute if entity @s[tag=!iniate_lightless] run tag @s add iniate_lightless

execute if score @s lightcall matches 6.. run scoreboard players set @s animation 10
scoreboard players remove @s[scores={animation=1..}] animation 1

execute if score @s lightcall matches 10.. if entity @s[tag=!lighted] unless block ~ ~-0.1 ~ sculk run function game:mobs/a1/lightless/light_up

execute if score @s lightcall matches ..3 if score @s animation matches ..0 if entity @s[tag=!darken] run function game:mobs/a1/lightless/darken
execute if block ~ ~-0.1 ~ sculk if entity @s[tag=!darken,tag=lighted] as @p if entity @s[tag=!sculk.notify] run function game:player/notify/sculk
execute if block ~ ~-0.1 ~ sculk if entity @s[tag=!darken,tag=lighted] run function game:mobs/a1/lightless/darken