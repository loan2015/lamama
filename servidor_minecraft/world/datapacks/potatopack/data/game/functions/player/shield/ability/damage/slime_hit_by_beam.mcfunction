#happens when slimes are hit by the beam

#count up
scoreboard players add @s animation 1
execute if score @s[tag=!slime_stage2] animation matches 20.. run summon slime ~ ~ ~ {DeathLootTable:"empty",Health:12f,Size:1,Tags:["area3_slime","slime","take_shield_kb","slime_stage2"],HandItems:[{id:"minecraft:air",Count:1b},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.follow_range,Base:32},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.attack_damage,Base:6.0},{Name:generic.armor,Base:-99},{Name:generic.attack_knockback,Base:1}]}
execute if score @s[tag=!slime_stage2] animation matches 20.. run summon slime ~ ~ ~ {DeathLootTable:"empty",Health:12f,Size:1,Tags:["area3_slime","slime","take_shield_kb","slime_stage2"],HandItems:[{id:"minecraft:air",Count:1b},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.follow_range,Base:32},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.attack_damage,Base:6.0},{Name:generic.armor,Base:-99},{Name:generic.attack_knockback,Base:1}]}
execute if score @s[tag=slime_stage2] animation matches 20.. run summon slime ~ ~ ~ {DeathLootTable:"empty",Health:1f,Size:0,Tags:["slime"],HandItems:[{id:"minecraft:air",Count:1b},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.follow_range,Base:2},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.attack_damage,Base:0.0},{Name:generic.armor,Base:-99},{Name:generic.attack_knockback,Base:1}]}
execute if score @s[tag=slime_stage2] animation matches 20.. run summon slime ~ ~ ~ {DeathLootTable:"empty",Health:1f,Size:0,Tags:["slime"],HandItems:[{id:"minecraft:air",Count:1b},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.follow_range,Base:2},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.attack_damage,Base:0.0},{Name:generic.armor,Base:-99},{Name:generic.attack_knockback,Base:1}]}
execute if score @s animation matches 20.. run playsound minecraft:entity.item.pickup hostile @a ~ ~ ~ 1 0.9
execute if score @s animation matches 20.. run function tools:helper/entity/voidkill

data modify storage link:temp temp.scaler set value 0.3f
execute if score 1hz gremloop matches 1 at @s facing entity @p eyes rotated ~ 0 run function tools:helper/calls/push_looking with storage link:temp temp
execute if score 1hz gremloop matches 11 at @s facing entity @p eyes rotated ~ 0 run function tools:helper/calls/push_looking with storage link:temp temp

particle item_slime ~ ~1 ~ 1 1 1 0 2 force

#End laser and add flag to set flags
scoreboard players set end temp 1
scoreboard players add place_leaf temp 1
tag @a[limit=1,sort=nearest,tag=blocking] add light_placed
execute if score 5hz gremloop matches 1 run tag @a[limit=1,sort=nearest,tag=blocking] add place_leaf
