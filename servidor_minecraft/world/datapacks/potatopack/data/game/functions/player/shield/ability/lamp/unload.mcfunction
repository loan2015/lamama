#Unloads the marker and stuff

#Blocks
setblock ~ ~ ~ redstone_lamp
fill ~1 ~ ~ ~-1 ~ ~ bedrock replace redstone_block
fill ~ ~1 ~ ~ ~-1 ~ bedrock replace redstone_block
fill ~ ~ ~1 ~ ~ ~-1 bedrock replace redstone_block

#Wire
execute positioned ~ ~ ~1 if block ~ ~ ~ red_terracotta run function game:player/shield/ability/lamp/black_wire
execute positioned ~ ~ ~-1 if block ~ ~ ~ red_terracotta run function game:player/shield/ability/lamp/black_wire
execute positioned ~ ~1 ~ if block ~ ~ ~ red_terracotta run function game:player/shield/ability/lamp/black_wire
execute positioned ~ ~-1 ~ if block ~ ~ ~ red_terracotta run function game:player/shield/ability/lamp/black_wire
execute positioned ~1 ~ ~ if block ~ ~ ~ red_terracotta run function game:player/shield/ability/lamp/black_wire
execute positioned ~-1 ~ ~ if block ~ ~ ~ red_terracotta run function game:player/shield/ability/lamp/black_wire

#Forceload
execute if entity @s[tag=force_loaded] run forceload remove ~ ~

#KILL
kill @s