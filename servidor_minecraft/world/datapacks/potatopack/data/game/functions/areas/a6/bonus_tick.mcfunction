#20hz for final bonus area

effect give @a[x=1143,y=-4,z=988,dx=16,dy=80,dz=18] slow_falling 3 0 true
execute store result score random temp run random value 1..2
execute if score random temp matches 2 as @a[x=1143,y=-4,z=988,dx=16,dy=80,dz=18] at @s run playsound minecraft:entity.horse.breathe record @s ~ ~ ~ 0.6 0.5

#Particles
execute store result storage link:temp temp.coords.x float 1 run random value 1143..1159
execute store result storage link:temp temp.coords.z float 1 run random value 988..1004

execute store result score y temp run data get entity @a[x=1143,y=-4,z=988,dx=16,dy=80,dz=18,limit=1,sort=random] Pos[1]
execute store result score y2 temp run random value -20..3
scoreboard players operation y temp += y2 temp

execute store result storage link:temp temp.coords.y float 1 run scoreboard players get y temp

execute if score 5hz gremloop matches 2 run function game:areas/a6/bonus_spawn_particle with storage link:temp temp.coords
execute as @e[x=1140,y=-24,z=980,dx=26,dy=160,dz=28,tag=bonus_part_last,type=marker] at @s run function game:areas/a6/bonus_particle_tick