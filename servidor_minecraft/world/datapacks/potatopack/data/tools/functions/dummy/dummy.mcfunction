#Attack dummy, 20hz
##685b5fb0-c1a1-44cd-970e-f110ececf08c

#summoning and deleting
kill @e[distance=32..,type=zombie,tag=dummy]
execute unless entity 685b5fb0-c1a1-44cd-970e-f110ececf08c run summon zombie ~ ~1 ~ {Silent:1b,UUID:[I;1750818736,-1046395699,-1760628464,-320016244],DeathLootTable:"empty",Health:1000f,Tags:["dummy","spawnchecked"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14336671},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1954284643,1775321449,-2132497989,-1139238340],Slot:"feet"}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14336671},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;2138566060,1043808619,-1992397176,-1856610813],Slot:"legs"}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14336671},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1604226516,418795445,-1544046753,-957950582],Slot:"chest"}]}},{id:"minecraft:player_head",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;-1635389095,-286636761,-1890589727,682207582]}],SkullOwner:{Id:[I;-1304065725,-236895694,-1917914595,-171170365],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODlhMzc3NmVlZWE0YjMyMGE0YmM1ZjVkNzFjODdkZmE1YWVkODQyZjlhZWUwOTI2OTY0ZmFiN2I2MmFkMGY2NSJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:200000000,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.follow_range,Base:16},{Name:generic.movement_speed,Base:0},{Name:generic.attack_damage,Base:0},{Name:generic.armor,Base:0},{Name:zombie.spawn_reinforcements,Base:0}]}

#velocity, multipy by 1000 then an extra 20 to convert to seconds
execute as 685b5fb0-c1a1-44cd-970e-f110ececf08c at @s store result score x temp run data get entity @s Motion[0] 20000
execute as 685b5fb0-c1a1-44cd-970e-f110ececf08c at @s store result score y temp run data get entity @s Motion[1] 20000
execute as 685b5fb0-c1a1-44cd-970e-f110ececf08c at @s store result score z temp run data get entity @s Motion[2] 20000
execute if score x temp matches ..0 run scoreboard players operation x temp *= -1 numbers
execute if score y temp matches ..0 run scoreboard players operation y temp *= -1 numbers
execute if score z temp matches ..0 run scoreboard players operation z temp *= -1 numbers
execute align y positioned ~ ~1 ~ facing entity @p feet run tp @e[distance=..32,type=zombie,tag=dummy] ~ ~ ~ ~ ~
scoreboard players set vel temp 0
scoreboard players operation vel temp += x temp
scoreboard players operation vel temp += y temp
scoreboard players operation vel temp += z temp


#hp
#dummydps is the total damage, times 1000, in the past 10s. Dummydmg is the damage of the past hit, times 1000
execute store result score dummydps temp run data get entity 685b5fb0-c1a1-44cd-970e-f110ececf08c Health 1000
scoreboard players operation dummydps temp -= 1000000 numbers
scoreboard players operation dummydps temp *= -1 numbers
execute if score 10s gremloop matches 1 run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c Health set value 1000
execute store result score dummyhp2 temp run data get entity 685b5fb0-c1a1-44cd-970e-f110ececf08c Health 1000
scoreboard players set dummydmg temp 0
scoreboard players operation dummydmg temp = dummyhp temp
scoreboard players operation dummydmg temp -= dummyhp2 temp
execute store result score php2 temp run data get entity @p Health 1000
scoreboard players set phpdmg temp 0
scoreboard players operation phpdmg temp = php temp
scoreboard players operation phpdmg temp -= php2 temp
scoreboard players operation pcent temp = phpdmg temp
scoreboard players operation pcent temp *= 100000 numbers
scoreboard players operation pcent temp /= pmax temp

#maths for decimles, this converts vel, dummydmg, and dummydps into decimles. Normal is intiger, "1" is decimle
scoreboard players set dummydmg1 temp 0
scoreboard players set dummydps1 temp 0
scoreboard players set vel1 temp 0
scoreboard players set phpdmg1 temp 0
scoreboard players set pcent1 temp 0
scoreboard players operation dummydps1 temp = dummydps temp
scoreboard players operation dummydmg1 temp = dummydmg temp
scoreboard players operation phpdmg1 temp = phpdmg temp
scoreboard players operation pcent1 temp = pcent temp
scoreboard players operation vel1 temp = vel temp
scoreboard players operation dummydps temp /= 1000 numbers
scoreboard players operation dummydmg temp /= 1000 numbers
scoreboard players operation phpdmg temp /= 1000 numbers
scoreboard players operation pcent temp /= 1000 numbers
scoreboard players operation vel temp /= 1000 numbers
scoreboard players operation dummydps temp *= 1000 numbers
scoreboard players operation dummydmg temp *= 1000 numbers
scoreboard players operation phpdmg temp *= 1000 numbers
scoreboard players operation pcent temp *= 1000 numbers
scoreboard players operation vel temp *= 1000 numbers
scoreboard players operation dummydps1 temp -= dummydps temp
scoreboard players operation dummydmg1 temp -= dummydmg temp
scoreboard players operation phpdmg1 temp -= phpdmg temp
scoreboard players operation pcent1 temp -= pcent temp
scoreboard players operation vel1 temp -= vel temp
scoreboard players operation dummydps temp /= 1000 numbers
scoreboard players operation dummydmg temp /= 1000 numbers
scoreboard players operation phpdmg temp /= 1000 numbers
scoreboard players operation pcent temp /= 1000 numbers
scoreboard players operation vel temp /= 1000 numbers

#result
execute as @e[distance=..32,type=zombie,tag=dummy,nbt={HurtTime:10s}] run tellraw @p [{"text":" ","color":"red","italic":false},{"score":{"name":"dummydmg","objective":"temp"},"color":"dark_red","bold":true,"italic":false},{"text":".","italic":false},{"score":{"name":"dummydmg1","objective":"temp"},"color":"dark_red","bold":true},{"text":" dmg | "},{"score":{"name":"dummydps","objective":"temp"},"color":"dark_red","bold":true},{"text":"."},{"score":{"name":"dummydps1","objective":"temp"},"color":"dark_red","bold":true},{"text":" Σdmg (10s) | "},{"score":{"name":"vel","objective":"temp"},"color":"dark_aqua","bold":true},{"text":".","color":"aqua"},{"score":{"name":"vel1","objective":"temp"},"color":"dark_aqua","bold":true},{"text":" Δm/s","color":"aqua"}]
execute as @a[distance=..6,nbt={HurtTime:9s}] run tellraw @p [{"text":" ","color":"red","italic":false},{"score":{"name":"phpdmg","objective":"temp"},"color":"dark_red","bold":true,"italic":false},{"text":".","italic":false},{"score":{"name":"phpdmg1","objective":"temp"},"color":"dark_red","bold":true},{"text":" hp | "},{"score":{"name":"pcent","objective":"temp"},"color":"dark_red","bold":true},{"text":"."},{"score":{"name":"pcent1","objective":"temp"},"color":"dark_red","bold":true},{"text":"%hp "},{"text":" <-Inaccurate if zero is first decimal","color":"gray"}]


#last, get dummyhp and reset numbers
execute store result score dummyhp temp run data get entity 685b5fb0-c1a1-44cd-970e-f110ececf08c Health 1000
scoreboard players reset dummyhp1 temp
scoreboard players reset dummydmg1 temp
scoreboard players reset dummydps1 temp
scoreboard players reset vel1 temp
scoreboard players reset dummyhp2 temp
scoreboard players reset dummydmg temp
scoreboard players reset dummydps temp
scoreboard players reset vel temp
scoreboard players reset x temp
scoreboard players reset y temp
scoreboard players reset z temp
execute store result score php temp run data get entity @p Health 1000
scoreboard players reset php2 temp
scoreboard players reset phpdmg temp
scoreboard players reset phpdmg1 temp
scoreboard players reset pcent temp
scoreboard players reset pcent1 temp

#auto-equip armor
execute if entity @p[nbt={SelectedItem:{id:"minecraft:leather_chestplate"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[2] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:golden_chestplate"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[2] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:chainmail_chestplate"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[2] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:iron_chestplate"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[2] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:diamond_chestplate"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[2] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:netherite_chestplate"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[2] set from entity @p SelectedItem

execute if entity @p[nbt={SelectedItem:{id:"minecraft:leather_boots"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[0] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:golden_boots"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[0] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:chainmail_boots"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[0] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:iron_boots"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[0] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:diamond_boots"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[0] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[0] set from entity @p SelectedItem

execute if entity @p[nbt={SelectedItem:{id:"minecraft:leather_leggings"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[1] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:golden_leggings"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[1] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:chainmail_leggings"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[1] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:iron_leggings"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[1] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:diamond_leggings"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[1] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:netherite_leggings"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[1] set from entity @p SelectedItem

execute if entity @p[nbt={SelectedItem:{id:"minecraft:leather_helmet"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[3] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:golden_helmet"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[3] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:chainmail_helmet"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[3] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:iron_helmet"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[3] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:diamond_helmet"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[3] set from entity @p SelectedItem
execute if entity @p[nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] run data modify entity 685b5fb0-c1a1-44cd-970e-f110ececf08c ArmorItems[3] set from entity @p SelectedItem
