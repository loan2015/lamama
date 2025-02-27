#Ticking for ray markers

#Movement
execute if block ^ ^ ^-0.5 #minecraft:prisms run tag @s add hit_glass
execute at @s run tp @s ^ ^ ^0.25

#particles
execute store result score random temp run random value 1..100

execute unless entity @s[tag=hit_glass] run particle dust 0.973 0.965 0.553 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if entity @s[tag=hit_glass,tag=red] if score random temp matches 40.. run particle dust 1 0 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 normal
execute if entity @s[tag=hit_glass,tag=orange] if score random temp matches 40.. run particle dust 1 0.569 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 normal
execute if entity @s[tag=hit_glass,tag=yellow] if score random temp matches 40.. run particle dust 0.933 1 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 normal
execute if entity @s[tag=hit_glass,tag=green] if score random temp matches 40.. run particle dust 0.098 0.58 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 normal
execute if entity @s[tag=hit_glass,tag=blue] if score random temp matches 40.. run particle dust 0.016 0 1 1 ~ ~ ~ 0.05 0.05 0.05 1 1 normal
execute if entity @s[tag=hit_glass,tag=purple] if score random temp matches 40.. run particle dust 0.659 0 0.659 1 ~ ~ ~ 0.05 0.05 0.05 1 1 normal

execute if entity @s[tag=hit_glass,tag=red] unless score random temp matches 40.. run particle dust 1 0 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if entity @s[tag=hit_glass,tag=orange] unless score random temp matches 40.. run particle dust 1 0.569 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if entity @s[tag=hit_glass,tag=yellow] unless score random temp matches 40.. run particle dust 0.933 1 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if entity @s[tag=hit_glass,tag=green] unless score random temp matches 40.. run particle dust 0.098 0.58 0 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if entity @s[tag=hit_glass,tag=blue] unless score random temp matches 40.. run particle dust 0.016 0 1 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
execute if entity @s[tag=hit_glass,tag=purple] unless score random temp matches 40.. run particle dust 0.659 0 0.659 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force

#failsafe
execute if entity @s[tag=!hit_glass] if block ~ ~ ~ air if score @s life matches 45.. run kill @s

#Life
scoreboard players add @s life 1
execute if score @s life matches 150.. run kill @s