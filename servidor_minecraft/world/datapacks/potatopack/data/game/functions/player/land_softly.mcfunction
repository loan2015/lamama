#20hz on players that must land softly

#remove tag
tag @s remove land_softly

#kick in, 0.6 is player hitbox size
execute if score @s land_softly matches ..90 unless block ~ ~-1 ~ #minecraft:airish run tag @s add land_softly
execute if score @s land_softly matches ..90 unless block ~ ~-1 ~0.3 #minecraft:airish run tag @s add land_softly
execute if score @s land_softly matches ..90 unless block ~ ~-1 ~-0.3 #minecraft:airish run tag @s add land_softly
execute if score @s land_softly matches ..90 unless block ~0.3 ~-1 ~ #minecraft:airish run tag @s add land_softly
execute if score @s land_softly matches ..90 unless block ~-0.3 ~-1 ~ #minecraft:airish run tag @s add land_softly

#effects, ensure slow falling remains
execute if entity @s[nbt={active_effects:[{id:"minecraft:slow_falling"}]}] run tag @s add already_landing_softly
execute if entity @s[tag=land_softly] run scoreboard players set @s land_softly 0
execute if entity @s[tag=land_softly] run effect give @s slow_falling 1 0 true
execute if entity @s[tag=already_landing_softly] run tag @s remove land_softly
tag @s remove already_landing_softly

#ticking
scoreboard players remove @s land_softly 1