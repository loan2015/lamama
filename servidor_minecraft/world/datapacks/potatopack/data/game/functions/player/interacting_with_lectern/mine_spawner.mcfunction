#20hz when you ought to be mining le spawner

#Add score
scoreboard players add @s spawner_mining_time 1

#Get max
scoreboard players set @s spawner_mine_time 9999
data modify storage link:temp item set from entity @s SelectedItem
execute if data storage link:temp item{id:"minecraft:wooden_pickaxe"} run scoreboard players set @s spawner_mine_time 48
execute if data storage link:temp item{id:"minecraft:stone_pickaxe"} run scoreboard players set @s spawner_mine_time 35
execute if data storage link:temp item{id:"minecraft:iron_pickaxe"} run scoreboard players set @s spawner_mine_time 29
execute if data storage link:temp item{id:"minecraft:diamond_pickaxe"} run scoreboard players set @s spawner_mine_time 25
execute if data storage link:temp item{id:"minecraft:netherite_pickaxe"} run scoreboard players set @s spawner_mine_time 21
execute if data storage link:temp item{id:"minecraft:golden_pickaxe"} run scoreboard players set @s spawner_mine_time 16
execute if score @s spawner_mine_time matches 9999 run scoreboard players set @s spawner_mining_time 0