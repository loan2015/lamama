#20hz when you have a shield on cooldown

#tick
scoreboard players remove @s shield_cd 1

#Update hand
tag @s[scores={shield_cd=1..}] add shield_disabled
data modify storage link:temp player set from entity @s
execute unless data storage link:temp player.Inventory[{Slot:-106b,tag:{custom_shield:1}}] run tag @s add replace_shield
execute if entity @s[tag=replace_shield] if data storage link:temp player.Inventory[{Slot:-106b}] run tag @s add swap_hands
execute if entity @s[tag=swap_hands] run function game:player/swap_hands
function game:player/shield/give_shield

#Levels
execute if entity @s[tag=!shield_cd_start] run scoreboard players operation @s shield_cd_start = @s shield_cd
execute if entity @s[tag=!shield_cd_start] run tag @s add shield_cd_start
$scoreboard players set level math $(cd)
execute if score 10hz gremloop matches 1 run function game:player/shield/cooldown_points_math
$xp set @s $(cd) levels

#flags
tag @s remove swap_hands
tag @s remove replace_shield
tag @s[scores={shield_cd=0}] remove shield_cd_start