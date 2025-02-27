#Registers items


#Store
data modify storage link:temp temp.item set value {}
data modify storage link:temp temp.item set from entity @s Item

#Creeper heads
execute if data storage link:temp temp.item{id:"minecraft:zombie_head"} run tag @s add creeper_head
execute if data storage link:temp temp.item{id:"minecraft:creeper_head"} run tag @s add creeper_head
execute if data storage link:temp temp.item{id:"minecraft:piglin_head"} run tag @s add creeper_head
execute if data storage link:temp temp.item{id:"minecraft:skeleton_skull"} run tag @s add creeper_head
execute if data storage link:temp temp.item{id:"minecraft:wither_skeleton_skull"} run tag @s add creeper_head


execute if entity @s[tag=creeper_head] run kill @s

#Flag
tag @s add item_registered