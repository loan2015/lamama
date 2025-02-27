#Player ticking 20hz on hookshot

#Check if mounted, if not, end
scoreboard players set temp temp 1
execute on vehicle run scoreboard players set temp temp 0
execute if score temp temp matches 1.. run scoreboard players set @s hookshot 1

#Move mount
scoreboard players operation n temp = @s hookshot
scoreboard players operation n temp *= 5 numbers
scoreboard players remove n temp 5
execute if entity @s[tag=hookshotinitiate,tag=!hookshotmoving] at @s anchored eyes positioned ^ ^ ^ run function game:player/shield/ability/hookshot/gauge_distance
#execute if entity @s[tag=hookshotinitiate,tag=!hookshotmoving] run tellraw @p {"score":{"name":"n","objective":"temp"}}

#Distance to travel
scoreboard players operation temp2 temp = @s hookshot
scoreboard players operation temp2 temp *= 5 numbers
execute store result storage link:temp temp.distance float 0.2 run scoreboard players operation temp2 temp -= n temp
execute if entity @s[tag=hookshotinitiate,tag=!hookshotmoving] on vehicle run function game:player/shield/ability/hookshot/teleport_mount with storage link:temp temp

#animation
execute on vehicle if score 10hz gremloop matches 1 run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,0.1f,0.5f],scale:[1f,1f,10f]}}
execute on vehicle unless score 10hz gremloop matches 1 run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,0.1f,-0.5f],scale:[1f,1f,10f]}}
execute if score 10hz gremloop matches 1 run playsound minecraft:block.chain.step record @a ~ ~ ~ 1 0.5

#tiking
scoreboard players remove @s hookshot 1
tag @s[tag=hookshotinitiate] add hookshotmoving
tag @s add hookshotinitiate
scoreboard players set @s shield_cd 22

#End
execute if score @s hookshot matches 0 run scoreboard players set @s land_softly 30
execute if score @s hookshot matches 0 run ride @s dismount
execute if score @s hookshot matches 0 run tag @s remove hookshotmoving
execute if score @s hookshot matches 0 run tag @s remove hookshotinitiate
execute if score @s hookshot matches 0 run scoreboard players set $strength delta.api.launch 12000
execute if score @s hookshot matches 0 at @e[distance=..1,type=block_display,limit=1,sort=nearest,tag=hookshot_display] rotated ~ ~-10 run function delta:api/launch_looking
execute if score @s hookshot matches 0 run scoreboard players set @s shield_cd 2
execute if score @s hookshot matches 0 on vehicle run kill @s


