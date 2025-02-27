#Happens when the player's inventory changes

#Store inventory
data modify storage link:temp player set from entity @s

#Effects

#flags
tag @s remove golden_helmet

#Shield upgrades
execute if data storage link:temp player.Inventory[{tag:{shield_upgrade:1}}] run function game:player/shield/upgrade/ability1
execute if data storage link:temp player.Inventory[{tag:{shield_upgrade:2}}] run function game:player/shield/upgrade/ability2
execute if data storage link:temp player.Inventory[{tag:{shield_upgrade:3}}] run function game:player/shield/upgrade/ability3
execute if data storage link:temp player.Inventory[{tag:{shield_upgrade:4}}] run function game:player/shield/upgrade/ability4
execute if data storage link:temp player.Inventory[{tag:{shield_upgrade:5}}] run function game:player/shield/upgrade/ability5
execute if data storage link:temp player.Inventory[{tag:{shield_upgrade:6}}] run function game:player/shield/upgrade/ability6

#Give back shield & Ensure in offhand
execute unless data storage link:temp player.Inventory[{Slot:-106b,tag:{custom_shield:1}}] run tag @s add replace_shield
execute if entity @s[tag=replace_shield] if data storage link:temp player.Inventory[{Slot:-106b}] run tag @s add swap_hands
scoreboard players set slot temp 1
execute store result score slot temp run data get storage link:temp player.Inventory[{tag:{custom_shield:1}}].Slot
execute unless score slot temp matches -106 run tag @s add replace_shield

#Swap hands code
execute if entity @s[tag=swap_hands,tag=!skip_swap] run function game:player/swap_hands
execute if entity @s[tag=swap_hands,tag=replace_shield,tag=!shield_disabled,tag=!skip_swap] if score ability4 game matches 1.. run function game:player/shield/ability/dash
execute if data storage link:temp player.SelectedItem{tag:{custom_shield:1}} if entity @s[tag=!swap_hands,tag=replace_shield,tag=!shield_disabled,tag=!skip_swap] if score ability4 game matches 1.. run function game:player/shield/ability/dash
execute if data storage link:temp player.SelectedItem{tag:{custom_shield:1}} if entity @s[tag=!swap_hands,tag=replace_shield,tag=shield_disabled,tag=!skip_swap] if score ability4 game matches 1.. run function game:player/shield/ability/dash_invalid


#Shield giving code
execute if entity @s[tag=replace_shield] run clear @s shield
execute if entity @s[tag=replace_shield] run clear @s carrot_on_a_stick{CustomModelData:1}
execute if entity @s[tag=replace_shield,gamemode=!creative] if score ability1 game matches 1.. run function game:player/shield/give_shield

#Torch code
#execute store result score torches temp run data get storage link:temp player.Inventory[{id:"minecraft:soul_torch"}].Count
#execute if score torches temp matches 1..8 run loot give @s loot minecraft:blocks/soul_torch
#execute if score torches temp matches 1..7 run loot give @s loot minecraft:blocks/soul_torch
#execute if score torches temp matches 1..6 run loot give @s loot minecraft:blocks/soul_torch
#execute if score torches temp matches 1..5 run loot give @s loot minecraft:blocks/soul_torch
#execute if score torches temp matches 10.. run clear @s soul_torch 1
#execute if score torches temp matches 11.. run clear @s soul_torch 2

#Gold helmet
execute if data storage link:temp player.Inventory[{Slot:103b,id:"minecraft:golden_helmet"}] run tag @s add golden_helmet

#clear bottles
execute if data storage link:temp player.Inventory[{id:"minecraft:glass_bottle"}] run clear @s glass_bottle
execute if data storage link:temp player.Inventory[{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}] run clear @s potion{Potion:"minecraft:water"}

#Ensure only one ring to rule them all!
execute store result score kelp temp if data storage link:temp player.Inventory[{id:"minecraft:dried_kelp"}]
execute if data storage link:temp player.Inventory[{id:"minecraft:dried_kelp"}] if score kelp temp matches 2.. run clear @s dried_kelp 1

#tags and flags
execute if entity @s[tag=skip_swap] run advancement revoke @s only game:invchange
tag @s remove kelper
tag @s remove replace_shield
tag @s remove swap_hands
tag @s remove skip_swap