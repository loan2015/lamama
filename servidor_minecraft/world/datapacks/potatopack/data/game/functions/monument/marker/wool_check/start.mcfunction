#starts the wool check sweep
#~-6 ~-2 ~-5 ~7 ~12 ~5
scoreboard players set x temp -6
scoreboard players set y temp -2
scoreboard players set z temp -5
execute positioned ~-6 ~-2 ~-5 run summon marker ~ ~ ~ {UUID:[I;416148383,1523535855,-1468323106,-14991844]}

execute as 18cdeb9f-5acf-4fef-a87b-2adeff1b3e1c at @s run function game:monument/marker/wool_check/x

kill 18cdeb9f-5acf-4fef-a87b-2adeff1b3e1c