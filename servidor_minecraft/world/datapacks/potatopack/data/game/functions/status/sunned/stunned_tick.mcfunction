#Ticking for the stunned effect

#Bells and whistles
scoreboard players add @s link.stunned_animation 20
execute if score @s link.stunned_animation matches 180.. run scoreboard players set @s link.stunned_animation -180
execute store result storage link:status temp.rot float 1 run scoreboard players get @s link.stunned_animation
scoreboard players operation temp temp = 2s gremloop
execute if score 2s gremloop matches 20.. run scoreboard players operation temp temp *= -1 numbers
execute if score 2s gremloop matches 20.. run scoreboard players add temp temp 40
execute store result storage link:status temp.rot2 float 1 run scoreboard players get temp temp
scoreboard players set n temp 100
function game:status/sunned/particles with storage link:status temp

execute if entity @s[type=magma_cube] unless block ~ ~-0.1 ~ #minecraft:airish run data merge entity @s {NoAI:1b}

#Add attributes
attribute @s[tag=!has_been_stunned] generic.attack_damage modifier add 1978961f-c0cb-44d4-98ab-3b89541bd687 stunned_attack -100 multiply
attribute @s[tag=!has_been_stunned] generic.movement_speed modifier add 81d68848-d96b-4806-9a47-e856ec66f9d2 stunned_speed -100 multiply
attribute @s[tag=!has_been_stunned] generic.follow_range modifier add 801888ea-27aa-45c5-9c6d-adbffd59fa47 stunned_view -100 multiply

#Is this the first tick or not?
tag @s add has_been_stunned

#ticking
scoreboard players remove @s link.stunned 1

#end
execute if score @s link.stunned matches 0 run tag @s remove link.stunned
execute if score @s link.stunned matches 0 run tag @s remove has_been_stunned
execute if score @s link.stunned matches 0 run attribute @s generic.attack_damage modifier remove 1978961f-c0cb-44d4-98ab-3b89541bd687
execute if score @s link.stunned matches 0 run attribute @s generic.movement_speed modifier remove 81d68848-d96b-4806-9a47-e856ec66f9d2
execute if score @s link.stunned matches 0 run attribute @s generic.follow_range modifier remove 801888ea-27aa-45c5-9c6d-adbffd59fa47
execute if score @s link.stunned matches 0 run data merge entity @s[type=magma_cube] {NoAI:0b}