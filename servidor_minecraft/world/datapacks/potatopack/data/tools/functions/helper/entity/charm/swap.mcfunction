#swaps mainhand and offhand of entity in question
data modify storage game:item Item set value {}
data modify storage game:item Item set from entity @s HandItems
execute unless data storage game:item Item[1].Count run data modify storage game:item Item[1] set value {id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:102}}
data modify storage game:item Item[1].tag.realbow set from storage game:item Item[0]
data modify storage game:item Item[0] set value {id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:103}}
data modify entity @s HandItems set from storage game:item Item
tag @s add charmswapped
