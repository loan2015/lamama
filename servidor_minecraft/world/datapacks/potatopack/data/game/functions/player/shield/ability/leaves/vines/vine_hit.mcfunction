#Hit normal vines

#Make marker
execute summon marker run function game:player/shield/ability/leaves/vines/load

#Grow effects
execute if block ~ ~ ~ sculk_vein[east=true] run setblock ~ ~ ~ vine[east=true]
execute if block ~ ~ ~ sculk_vein[west=true] run setblock ~ ~ ~ vine[west=true]
execute if block ~ ~ ~ sculk_vein[north=true] run setblock ~ ~ ~ vine[north=true]
execute if block ~ ~ ~ sculk_vein[south=true] run setblock ~ ~ ~ vine[south=true]
execute if block ~ ~ ~ sculk_vein[up=true] run setblock ~ ~ ~ vine[up=true]
particle happy_villager ~ ~ ~ 0.4 0.4 0.4 0 10 force
playsound minecraft:block.wet_grass.place ambient @a ~ ~ ~ 1 0.8
tag @s add place_leaf