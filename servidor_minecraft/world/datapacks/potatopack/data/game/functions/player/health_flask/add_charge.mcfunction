#adds a charge for the health flask


#SIKE! It just gives you the flask, charge logic in parent

#Get slot
execute store result score slot temp run data get entity @s Inventory[{id:"minecraft:dried_kelp"}].Slot

#Begin writing the item
setblock 0 200 0 stone
setblock 0 200 0 chest
loot insert 0 200 0 loot game:health_flask

#Apply lore
execute if score @s health_charge matches 1 run data modify block 0 200 0 Items[0].tag.display.Name set value '{"translate":"custom_healing.name1","italic":false}'
execute if score @s health_charge matches 2 run data modify block 0 200 0 Items[0].tag.display.Name set value '{"translate":"custom_healing.name2","italic":false}'
execute if score @s health_charge matches 3 run data modify block 0 200 0 Items[0].tag.display.Name set value '{"translate":"custom_healing.name3","italic":false}'
execute if score @s health_charge matches 4 run data modify block 0 200 0 Items[0].tag.display.Name set value '{"translate":"custom_healing.name4","italic":false}'
execute if score @s health_charge matches 5 run data modify block 0 200 0 Items[0].tag.display.Name set value '{"translate":"custom_healing.name5","italic":false}'

execute if score @s health_charge matches 1 run data modify block 0 200 0 Items[0].tag.CustomModelData set value 2
execute if score @s health_charge matches 2 run data modify block 0 200 0 Items[0].tag.CustomModelData set value 3
execute if score @s health_charge matches 3 run data modify block 0 200 0 Items[0].tag.CustomModelData set value 4
execute if score @s health_charge matches 4 run data modify block 0 200 0 Items[0].tag.CustomModelData set value 5
execute if score @s health_charge matches 5 run data modify block 0 200 0 Items[0].tag.CustomModelData set value 6

#Write item
function tools:helper/misc/write_item