#Hit twisting vines


#Make marker
execute positioned ~-0.5 ~-64 ~-0.5 unless entity @e[dx=0,dy=128,dz=0,tag=vines,type=marker] positioned ~0.5 ~64 ~0.5 summon marker run function game:player/shield/ability/leaves/vines/load

#Grow effects
setblock ~ ~ ~ twisting_vines
particle happy_villager ~ ~ ~ 0.4 0.4 0.4 0 10 force
playsound minecraft:block.wet_grass.place ambient @a ~ ~ ~ 1 0.8
tag @s add place_leaf