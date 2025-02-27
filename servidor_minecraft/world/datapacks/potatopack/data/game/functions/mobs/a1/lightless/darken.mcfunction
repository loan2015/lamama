tag @s add darken
tag @s remove lighted
effect give @s speed infinite 2 true
data modify entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}].Base set value 0.4d
item replace entity @s armor.head with leather_helmet{display:{color:1}}
item replace entity @s armor.chest with leather_chestplate{display:{color:1}}
item replace entity @s armor.legs with leather_leggings{display:{color:1}}
item replace entity @s armor.feet with leather_boots{display:{color:1}}
playsound minecraft:entity.drowned.swim hostile @a ~ ~ ~ 1 2
particle minecraft:sculk_charge_pop ~ ~0.5 ~ 0 0.5 0 0.1 10
particle minecraft:sculk_charge_pop ~ ~0.5 ~ 0 0.5 0 0.1 10 force