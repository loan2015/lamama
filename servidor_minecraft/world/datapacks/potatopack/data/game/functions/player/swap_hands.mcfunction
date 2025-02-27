#Swaps the items in the player's hands
setblock 0 200 0 stone
setblock 0 200 0 chest
item replace block 0 200 0 container.0 from entity @s weapon.offhand
item replace block 0 200 0 container.1 from entity @s weapon.mainhand
item replace entity @s weapon.offhand from block 0 200 0 container.1
item replace entity @s weapon.mainhand from block 0 200 0 container.0

#Notify of ability cd
execute if entity @s[tag=swap_hands,tag=replace_shield,tag=shield_disabled] if score ability4 game matches 1.. run function game:player/shield/ability/dash_invalid
