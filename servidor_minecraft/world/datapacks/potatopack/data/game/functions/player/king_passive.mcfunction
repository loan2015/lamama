#King's gait passive
effect give @s resistance 1 0 false
attribute @s generic.knockback_resistance modifier add f5b31bdc-fdc2-4962-855d-528b256cb0be "king_passive" 1000 add
tag @s add standing_on_sculk
execute store result score random temp run random value 1..10
execute if score random temp matches ..3 run particle minecraft:soul ~ ~0.8 ~ 0.3 0.8 0.3 0.03 1 force
execute unless score random temp matches ..3 run particle minecraft:soul ~ ~0.8 ~ 0.3 0.8 0.3 0.03 1 normal