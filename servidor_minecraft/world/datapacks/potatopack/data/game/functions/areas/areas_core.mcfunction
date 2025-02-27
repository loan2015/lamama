#runs at 20hz, this function determines/updates the area each player is in

#Find the area the player is in
scoreboard players add @a area 0
scoreboard players set @a[x=1108,y=-27,z=1152,distance=..10] area 1
execute positioned 1161.00 -49.56 1134.68 if loaded ~ ~ ~ if block ~ ~ ~ minecraft:glowstone run scoreboard players set @a[distance=..15] area 2
scoreboard players set @a[x=1179,y=-8,z=1083,distance=..10] area 3
scoreboard players set @a[x=1159,y=-11,z=1138,distance=..5] area 4
scoreboard players set @a[x=1138,y=-34,z=1126,distance=..4] area 4
scoreboard players set @a[x=1040,y=5,z=1071,distance=..4] area 5
scoreboard players set @a[x=1133,y=22,z=1071,distance=..8] area 6
scoreboard players set @a[x=1098,y=-38,z=1092,distance=..4] area -1

#Area entry logic
execute as @a[tag=!visited_a1] if score @s area matches 1 at @s run function game:areas/a1/visit
execute as @a[tag=!visited_a2] if score @s area matches 2 at @s run function game:areas/a2/visit
execute as @a[tag=!visited_a3] if score @s area matches 3 at @s run function game:areas/a3/visit
execute as @a[tag=!visited_a4] if score @s area matches 4 at @s run function game:areas/a4/visit
execute as @a[tag=!visited_a5] if score @s area matches 5 at @s run function game:areas/a5/visit
execute as @a[tag=!visited_a6] if score @s area matches 6 at @s run function game:areas/a6/visit
execute as @a[tag=!visited_mon] if score @s area matches -1 at @s run function game:areas/monument/visit