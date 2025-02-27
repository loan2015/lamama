#Loop for making the red wire

#setblock
setblock ~ ~ ~ red_terracotta

#Recurse
execute positioned ~ ~ ~1 if block ~ ~ ~ black_terracotta run function game:player/shield/ability/lamp/red_wire
execute positioned ~ ~ ~-1 if block ~ ~ ~ black_terracotta run function game:player/shield/ability/lamp/red_wire
execute positioned ~ ~1 ~ if block ~ ~ ~ black_terracotta run function game:player/shield/ability/lamp/red_wire
execute positioned ~ ~-1 ~ if block ~ ~ ~ black_terracotta run function game:player/shield/ability/lamp/red_wire
execute positioned ~1 ~ ~ if block ~ ~ ~ black_terracotta run function game:player/shield/ability/lamp/red_wire
execute positioned ~-1 ~ ~ if block ~ ~ ~ black_terracotta run function game:player/shield/ability/lamp/red_wire