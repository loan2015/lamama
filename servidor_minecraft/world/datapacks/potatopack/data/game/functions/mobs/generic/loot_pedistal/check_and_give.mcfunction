#Checks if player can get loot and gives it

#check
setblock 0 200 0 stone
setblock 0 200 0 chest
$loot insert 0 200 0 loot $(DeathLootTable)
data modify storage link:temp temp.Item.tag set from block 0 200 0 Items[0].tag
data modify storage link:temp temp.Item.id set from block 0 200 0 Items[0].id
function game:mobs/generic/loot_pedistal/check with storage link:temp temp.Item

#failsafes
execute if entity @s[nbt={data:{DeathLootTable:"game:upgrade/ability1"}}] if score ability1 game matches 1.. run tag @s remove succeed
execute if entity @s[nbt={data:{DeathLootTable:"game:upgrade/ability2"}}] if score ability2 game matches 1.. run tag @s remove succeed
execute if entity @s[nbt={data:{DeathLootTable:"game:upgrade/ability3"}}] if score ability3 game matches 1.. run tag @s remove succeed
execute if entity @s[nbt={data:{DeathLootTable:"game:upgrade/ability4"}}] if score ability4 game matches 1.. run tag @s remove succeed
execute if entity @s[nbt={data:{DeathLootTable:"game:upgrade/ability5"}}] if score ability5 game matches 1.. run tag @s remove succeed
execute if entity @s[nbt={data:{DeathLootTable:"game:upgrade/ability6"}}] if score ability6 game matches 1.. run tag @s remove succeed

#Succed
execute if entity @s[tag=succeed] run playsound minecraft:block.note_block.pling record @p ~ ~ ~ 0.5 2
$execute if entity @s[tag=succeed] run loot give @p loot $(DeathLootTable)
execute if entity @s[tag=succeed] run playsound entity.item.pickup record @p ~ ~ ~ 1 1
execute if entity @s[tag=succeed] on vehicle at @s run tp @s ~ ~ ~ ~-170 ~
execute if entity @s[tag=succeed] on vehicle at @s run particle firework ~ ~0.3 ~ 0 0 0 0.1 10 force

#fail
execute if entity @s[tag=!succeed] run playsound minecraft:block.note_block.didgeridoo record @p ~ ~ ~ 1 0.5
execute if entity @s[tag=!succeed] run tellraw @p {"translate":"notify.item_pedistal.invalid","italic":false}

#flags
tag @s remove succeed