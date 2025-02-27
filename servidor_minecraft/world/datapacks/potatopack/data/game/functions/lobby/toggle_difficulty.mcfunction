#Toggles difficulty

#Detect current
scoreboard players set temp temp 1
execute if entity @s[tag=light_mode] run scoreboard players set temp temp 0
execute if entity @s[tag=challenge_mode] run scoreboard players set temp temp 2

#Output
execute if score temp temp matches 0 run tag @s remove light_mode
execute if score temp temp matches 0 run playsound minecraft:entity.zombie.ambient record @s ~ ~ ~ 1 0.7
execute if score temp temp matches 0 run tellraw @s {"translate":"difficulty.normal"}

execute if score temp temp matches 1 run tag @s add challenge_mode
execute if score temp temp matches 1 run playsound minecraft:entity.ender_dragon.growl record @s ~ ~ ~ 0.6 0.7
execute if score temp temp matches 1 run tellraw @s {"translate":"difficulty.challenge"}

execute if score temp temp matches 2 run tag @s add light_mode
execute if score temp temp matches 2 run tag @s remove challenge_mode
execute if score temp temp matches 2 run playsound minecraft:entity.villager.celebrate record @s ~ ~ ~ 1 0.7
execute if score temp temp matches 2 run tellraw @s {"translate":"difficulty.easy","fallback":"§fYour difficulty was set to §alight mode§f. Your beam's light lingers and kills grant torches.\n§cThis is NOT the intended experience"}

tellraw @s {"translate":"difficulty.generic"}
scoreboard players set @s difficulty 0
difficulty normal
advancement revoke @s only game:difficulty
advancement revoke @s only game:difficulty2