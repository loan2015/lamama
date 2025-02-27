#Removes lefs

particle block oak_leaves ~ ~ ~ 0.3 0.3 0.3 0 6 force
particle block oak_leaves ~ ~ ~ 0.3 0.3 0.3 0 6 normal
playsound minecraft:block.wet_grass.break ambient @a ~ ~ ~ 0.4 0.8
fill ~ ~ ~ ~ ~ ~ air replace #minecraft:remove_leaves

execute if entity @s[tag=!leaves_notify] run function game:player/notify/leaves


tag @s add place_leaf