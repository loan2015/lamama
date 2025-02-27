


#Make marker
execute summon marker run function game:player/shield/ability/leaves/flower/load

#Grow effects
particle minecraft:cherry_leaves ~ ~2 ~ 2 1 2 10 30 force
playsound minecraft:block.wet_grass.place ambient @a ~ ~ ~ 1 0.8
tag @s add place_leaf
fill ~1 ~ ~ ~-1 ~ ~ cherry_leaves
fill ~ ~ ~1 ~ ~ ~-1 cherry_leaves
fill ~ ~1 ~ ~ ~ ~ cherry_leaves
setblock ~ ~ ~ moss_block
