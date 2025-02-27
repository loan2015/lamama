#Loop for making the black wire

#setblock
setblock ~ ~ ~ black_terracotta

#Recurse
execute positioned ~ ~ ~1 if block ~ ~ ~ red_terracotta run function game:player/shield/ability/lamp/black_wire
execute positioned ~ ~ ~-1 if block ~ ~ ~ red_terracotta run function game:player/shield/ability/lamp/black_wire
execute positioned ~ ~1 ~ if block ~ ~ ~ red_terracotta run function game:player/shield/ability/lamp/black_wire
execute positioned ~ ~-1 ~ if block ~ ~ ~ red_terracotta run function game:player/shield/ability/lamp/black_wire
execute positioned ~1 ~ ~ if block ~ ~ ~ red_terracotta run function game:player/shield/ability/lamp/black_wire
execute positioned ~-1 ~ ~ if block ~ ~ ~ red_terracotta run function game:player/shield/ability/lamp/black_wire