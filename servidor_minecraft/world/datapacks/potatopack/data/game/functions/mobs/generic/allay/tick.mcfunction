#20hz on allys

#Clock
scoreboard players add @s temp 1
execute if score @s temp matches 30.. run scoreboard players set @s temp 1

#Check for blocks
scoreboard players set temp temp 0
execute if score @s temp matches 20 store result score temp temp run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 sculk_catalyst replace sculk
execute if score temp temp matches 1.. run particle happy_villager ~ ~ ~ 2 2 2 0 15 force
execute if score temp temp matches 1.. run playsound minecraft:entity.allay.item_given hostile @a ~ ~ ~ 1 1.3

#Teleport to player
execute if score @s temp matches 10 unless entity @a[distance=..32,limit=1,sort=nearest] run tp @s @a[limit=1,sort=nearest]