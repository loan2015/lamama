#moves offhand data into mainhand
data modify storage game:item Item set value {}
data modify storage game:item Item set from entity @s HandItems
data modify storage game:item Item[0] set from storage game:item Item[1].tag.realbow
data modify entity @s HandItems set from storage game:item Item
tag @s remove charmswapped