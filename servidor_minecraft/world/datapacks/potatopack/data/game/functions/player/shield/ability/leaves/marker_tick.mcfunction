#20hz on leaf markers

execute if entity @s[tag=!registered] at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
execute if entity @s[tag=!registered] run scoreboard players set @s leaf_range 10
execute if entity @s[tag=!registered] run say leaf range set to 10. "/scoreboard players set @E[type=marker,limit=1,sort=nearest,tag=leaves] leaf_range <x>"" to change
execute unless block ~ ~ ~ jungle_leaves at @s run setblock ~ ~ ~ jungle_leaves

#flag
tag @s add registered