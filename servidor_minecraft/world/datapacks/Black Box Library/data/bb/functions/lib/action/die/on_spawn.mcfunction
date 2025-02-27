
scoreboard players set @s bbl.action.die.on_spawn 0
function #minecraft:bbl/action/die/on_spawn
effect give @s instant_health 20 20 true

scoreboard players set players temp 0
execute as @a run scoreboard players add players temp 1
execute if score players temp matches 2.. if entity @s[tag=!player_trigger_notify] run tellraw @s {"translate":"player.trigger.notify"}
execute if score players temp matches 2.. if entity @s[tag=!player_trigger_notify] run tag @s add player_trigger_notify