#Finds what areas the players are in (NOTE: this happens a tick after ambience actually gets this info), and slaps it into a execute if score $pina-10 temp matches 1.. run scoreboard

execute if score $pina-10 temp matches 1.. run scoreboard players remove $pina-10 temp 1
execute if score $pina-9 temp matches 1.. run scoreboard players remove $pina-9 temp 1
execute if score $pina-8 temp matches 1.. run scoreboard players remove $pina-8 temp 1
execute if score $pina-7 temp matches 1.. run scoreboard players remove $pina-7 temp 1
execute if score $pina-6 temp matches 1.. run scoreboard players remove $pina-6 temp 1
execute if score $pina-5 temp matches 1.. run scoreboard players remove $pina-5 temp 1
execute if score $pina-4 temp matches 1.. run scoreboard players remove $pina-4 temp 1
execute if score $pina-3 temp matches 1.. run scoreboard players remove $pina-3 temp 1
execute if score $pina-2 temp matches 1.. run scoreboard players remove $pina-2 temp 1
execute if score $pina-1 temp matches 1.. run scoreboard players remove $pina-1 temp 1
execute if score $pina0 temp matches 1.. run scoreboard players remove $pina0 temp 1
execute if score $pina1 temp matches 1.. run scoreboard players remove $pina1 temp 1
execute if score $pina2 temp matches 1.. run scoreboard players remove $pina2 temp 1
execute if score $pina3 temp matches 1.. run scoreboard players remove $pina3 temp 1
execute if score $pina4 temp matches 1.. run scoreboard players remove $pina4 temp 1
execute if score $pina5 temp matches 1.. run scoreboard players remove $pina5 temp 1
execute if score $pina6 temp matches 1.. run scoreboard players remove $pina6 temp 1
execute if score $pina7 temp matches 1.. run scoreboard players remove $pina7 temp 1
execute if score $pina8 temp matches 1.. run scoreboard players remove $pina8 temp 1
execute if score $pina9 temp matches 1.. run scoreboard players remove $pina9 temp 1
execute if score $pina10 temp matches 1.. run scoreboard players remove $pina10 temp 1
execute if score $pina11 temp matches 1.. run scoreboard players remove $pina11 temp 1
execute if score $pina12 temp matches 1.. run scoreboard players remove $pina12 temp 1
execute if score $pina13 temp matches 1.. run scoreboard players remove $pina13 temp 1
execute if score $pina14 temp matches 1.. run scoreboard players remove $pina14 temp 1
execute if score $pina15 temp matches 1.. run scoreboard players remove $pina15 temp 1
execute if score $pina16 temp matches 1.. run scoreboard players remove $pina16 temp 1

#Execute as all players to write

execute as @a run function tools:helper/calls/get_areas_sub