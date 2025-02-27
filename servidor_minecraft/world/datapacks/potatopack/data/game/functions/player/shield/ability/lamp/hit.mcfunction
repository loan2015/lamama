#Happens when a redstone lamp is hit

#sound
execute at @a[distance=..100] facing entity @s eyes run playsound minecraft:block.conduit.activate record @p ^ ^ ^2 1 2

#flags
tag @s add hit_lamp
scoreboard players set $lamp_cooldown temp 20

#Summon marker
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon marker run function game:player/shield/ability/lamp/summon

#Blocks
setblock ~ ~ ~ glowstone
fill ~1 ~ ~ ~-1 ~ ~ redstone_block replace bedrock
fill ~ ~1 ~ ~ ~-1 ~ redstone_block replace bedrock
fill ~ ~ ~1 ~ ~ ~-1 redstone_block replace bedrock

#Wire
execute positioned ~ ~ ~1 if block ~ ~ ~ black_terracotta run function game:player/shield/ability/lamp/red_wire
execute positioned ~ ~ ~-1 if block ~ ~ ~ black_terracotta run function game:player/shield/ability/lamp/red_wire
execute positioned ~ ~1 ~ if block ~ ~ ~ black_terracotta run function game:player/shield/ability/lamp/red_wire
execute positioned ~ ~-1 ~ if block ~ ~ ~ black_terracotta run function game:player/shield/ability/lamp/red_wire
execute positioned ~1 ~ ~ if block ~ ~ ~ black_terracotta run function game:player/shield/ability/lamp/red_wire
execute positioned ~-1 ~ ~ if block ~ ~ ~ black_terracotta run function game:player/shield/ability/lamp/red_wire