#Update entity heath

#scores
scoreboard players reset @s healthcounter
execute store result score @s healthd run data get entity @s Health 100
scoreboard players operation @s healthdpercent = @s healthd
scoreboard players operation @s healthdpercent *= 100 numbers
scoreboard players operation @s healthdpercent /= @s healthdmax
tag @s add ouchie

#hp numbers popping off
scoreboard players add @s healthlastpercent 0
execute if score @s healthlastpercent matches ..0 run scoreboard players set @s healthlastpercent 100
scoreboard players set temp temp 0
scoreboard players operation temp temp = @s healthlastpercent
scoreboard players operation temp temp -= @s healthdpercent

execute at @s run function health:healh_text_loop

scoreboard players operation @s healthlastpercent = @s healthdpercent
#tellraw @p {"score":{"name":"temp","objective":"temp"}}

#set name
data modify entity @s CustomNameVisible set value 1b

execute if score @s healthdpercent matches ..5 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"","color":"green"},{"text":"||||||||||||||||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 6..10 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"|","color":"#D30000"},{"text":"|||||||||||||||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 11..15 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"|||","color":"#E70000"},{"text":"|||||||||||||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 16..20 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"||||","color":"#E70000"},{"text":"||||||||||||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 21..25 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"|||||","color":"#FF0000"},{"text":"|||||||||||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 26..30 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"||||||","color":"#FF0000"},{"text":"||||||||||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 31..35 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"|||||||","color":"#FF4600"},{"text":"|||||||||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 36..40 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"||||||||","color":"#FF4600"},{"text":"||||||||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 41..45 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"|||||||||","color":"#FF8700"},{"text":"|||||||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 46..50 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"||||||||||","color":"#FF8700"},{"text":"||||||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 51..55 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"|||||||||||","color":"#FFD800"},{"text":"|||||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 56..60 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"||||||||||||","color":"#FFD800"},{"text":"||||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 61..65 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"|||||||||||||","color":"#F2F502"},{"text":"|||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 66..70 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"||||||||||||||","color":"#F2F502"},{"text":"||||||","color":"gray"}]'}
execute if score @s healthdpercent matches 71..85 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"|||||||||||||||","color":"#CCF502"},{"text":"|||||","color":"gray"}]'}
execute if score @s healthdpercent matches 76..80 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"||||||||||||||||","color":"#CCF502"},{"text":"||||","color":"gray"}]'}
execute if score @s healthdpercent matches 81..85 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"|||||||||||||||||","color":"#95F502"},{"text":"|||","color":"gray"}]'}
execute if score @s healthdpercent matches 86..90 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"||||||||||||||||||","color":"#95F502"},{"text":"||","color":"gray"}]'}
execute if score @s healthdpercent matches 91..95 run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"|||||||||||||||||||","color":"#66F801"},{"text":"|","color":"gray"}]'}
execute if score @s healthdpercent matches 96.. run data merge entity @s[tag=!mh_hide_bar] {CustomNameVisible:1b,CustomName:'[{"text":"||||||||||||||||||||","color":"#66F801"},{"text":"","color":"gray"}]'}

