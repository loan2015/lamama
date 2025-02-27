#Notifies the player about the bonuses

playsound entity.player.levelup record @s ~ ~ ~ 1 2
tellraw @s {"translate":"custom_bonus.notify"}
tag @s add bonus_notify