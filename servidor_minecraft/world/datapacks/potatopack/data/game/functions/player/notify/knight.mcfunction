#Notifies the player about the bonuses

execute at @s run playsound minecraft:entity.villager.ambient record @s ~ ~ ~ 1 0.5
tellraw @s [{"text":" ","color":"gray","italic":true},{"translate":"knight.notify"}]
tag @s add knight.notify