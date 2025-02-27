#Updates the shield in the player's offhand

#Set up chest
forceload add 0 0
setblock 0 200 0 stone
setblock 0 200 0 chest
execute unless entity @s[tag=shield_disabled] run loot insert 0 200 0 loot game:shield
execute if entity @s[tag=shield_disabled] run loot insert 0 200 0 loot game:shield_disabled

#Modify abilities
execute if score ability1 game matches 1.. run data modify block 0 200 0 Items[0].tag.display.Lore[2] set value '{"translate":"custom_shield.lore3_unlocked","italic":false}'
execute if score ability1 game matches 1.. run data modify block 0 200 0 Items[0].tag.display.Lore[3] set value '{"translate":"custom_shield.lore4_unlocked","italic":false}'
execute if score ability2 game matches 1.. run data modify block 0 200 0 Items[0].tag.display.Lore[4] set value '{"translate":"custom_shield.lore5_unlocked","italic":false}'
execute if score ability2 game matches 1.. run data modify block 0 200 0 Items[0].tag.display.Lore[5] set value '{"translate":"custom_shield.lore6_unlocked","italic":false}'
execute if score ability3 game matches 1.. run data modify block 0 200 0 Items[0].tag.display.Lore[6] set value '{"translate":"custom_shield.lore7_unlocked","italic":false}'
execute if score ability3 game matches 1.. run data modify block 0 200 0 Items[0].tag.display.Lore[7] set value '{"translate":"custom_shield.lore8_unlocked","italic":false}'
execute if score ability4 game matches 1.. run data modify block 0 200 0 Items[0].tag.display.Lore[8] set value '[{"translate":"custom_shield.lore9.1_unlocked","color":"white","italic":false},{"keybind":"key.swapOffhand","italic":false},{"translate":"custom_shield.lore9.2_unlocked"}]'
execute if score ability4 game matches 1.. run data modify block 0 200 0 Items[0].tag.display.Lore[9] set value '{"translate":"custom_shield.lore10_unlocked","italic":false}'
execute if score ability5 game matches 1.. run data modify block 0 200 0 Items[0].tag.display.Lore[10] set value '{"translate":"custom_shield.lore11_unlocked","italic":false}'
execute if score ability5 game matches 1.. run data modify block 0 200 0 Items[0].tag.display.Lore[11] set value '{"translate":"custom_shield.lore12_unlocked","italic":false}'
execute if score ability6 game matches 1.. run data modify block 0 200 0 Items[0].tag.display.Lore[12] set value '{"translate":"custom_shield.lore13_unlocked","italic":false}'
execute if score ability6 game matches 1.. run data modify block 0 200 0 Items[0].tag.display.Lore[13] set value '{"translate":"custom_shield.lore14_unlocked","italic":false}'

#Cooldown count
execute if entity @s[tag=shield_disabled] store result block 0 200 0 Items[0].Count byte 0.5 run scoreboard players get @s shield_cd

#Erase item edgecase
execute if entity @s[tag=swap_hands] unless data storage link:temp player.Inventory[{Slot:-106b,tag:{custom_shield:1}}] if data storage link:temp player.Inventory[{Slot:-106b}] if data storage link:temp player.SelectedItem{} unless data storage link:temp player.SelectedItem{tag:{custom_shield:1}} run summon item ~ ~ ~ {Age:5998,Tags:["offhand_edge"],Item:{id:"minecraft:stone",Count:1b}}
execute if entity @s[tag=swap_hands] unless data storage link:temp player.Inventory[{Slot:-106b,tag:{custom_shield:1}}] if data storage link:temp player.Inventory[{Slot:-106b}] if data storage link:temp player.SelectedItem{} unless data storage link:temp player.SelectedItem{tag:{custom_shield:1}} run data modify entity @e[distance=..1,type=item,limit=1,sort=nearest,tag=offhand_edge] Item set from storage link:temp player.SelectedItem

#Write shield to offhand
item replace entity @s weapon.offhand from block 0 200 0 container.0