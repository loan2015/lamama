#Happens when the player consumes dried kep

#flags
advancement revoke @s only game:eat_kelp

#Begin writing the item
setblock 0 200 0 stone
setblock 0 200 0 chest
execute unless entity @s[tag=challenge_mode] run loot insert 0 200 0 loot game:health_flask
execute if entity @s[tag=challenge_mode] run loot insert 0 200 0 loot game:health_flask_challenge

#heal
execute if score @s health_charge matches 1.. run effect give @s minecraft:instant_health 1 0 true

#Remove score 
scoreboard players remove @s health_charge 1

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

execute if score @s health_charge matches ..0 store result block 0 200 0 Items[0].tag.blip float 1 run random value 1..10000


#write item
item replace entity @s weapon.mainhand from block 0 200 0 container.0

#Flags
execute if score @s health_charge matches ..-1 run scoreboard players set @s health_charge 0