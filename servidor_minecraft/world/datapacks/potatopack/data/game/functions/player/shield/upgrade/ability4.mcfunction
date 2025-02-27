#Gives upgrade in file name

scoreboard players set ability4 game 1
clear @s shield{shield_upgrade:4}
team join friendly @s
tellraw @a [{"selector":"@s"},{"translate":"notify.ability.unlocked"}]
team join friendly_player @s
tellraw @a [{"translate":"custom_shield.lore9.1_unlocked","hoverEvent":{"action":"show_text","value":[{"translate":"custom_shield.lore10_unlocked"}]}},{"keybind":"key.swapOffhand","hoverEvent":{"action":"show_text","value":[{"translate":"custom_shield.lore10_unlocked"}]}},{"translate":"custom_shield.lore9.2_unlocked","hoverEvent":{"action":"show_text","value":[{"translate":"custom_shield.lore10_unlocked"}]}}]
tellraw @a {"translate":"custom_shield.lore9.3_unlocked","fallback":"§fAbility Ⓔ §7Hookshot - Right Clicking targets pulls you towards them"}
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 0.65 0.7

tag @a add replace_shield
tag @a add skip_swap
execute at @s as @a[distance=0.01..] at @s run function game:player/invchange