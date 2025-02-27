#Notifies the player about the bonuses

playsound entity.player.levelup record @s ~ ~ ~ 1 2
tellraw @s {"translate":"leaves.notify"}
tag @s add leaves_notify