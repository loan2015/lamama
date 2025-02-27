#Gives upgrade in file name

scoreboard players set ability2 game 1
clear @s shield{shield_upgrade:2}
team join friendly @s
tellraw @a [{"selector":"@s"},{"translate":"notify.ability.unlocked"}]
team join friendly_player @s
tellraw @a {"translate":"custom_shield.lore5_unlocked","hoverEvent":{"action":"show_text","value":[{"translate":"custom_shield.lore6_unlocked"}]}}
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.65 0.7

tag @a add replace_shield
tag @a add skip_swap
execute at @s as @a[distance=0.01..] at @s run function game:player/invchange