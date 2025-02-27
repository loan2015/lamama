
#Happens when the block is hit

#Lectern check
execute if block ~ ~ ~ lectern[has_book=true]{Book:{tag:{isbonus:1}}} run scoreboard players set n temp -99

#Spawner check
execute if block ~ ~ ~ spawner if score n temp matches 6.. run scoreboard players set n temp -100
execute if score n temp matches -100 if score @s spawner_mining_time >= @s spawner_mine_time run setblock ~ ~ ~ air destroy
execute if score n temp matches -100 if score @s spawner_mining_time >= @s spawner_mine_time run scoreboard players add @s health_spawner 1
execute if score n temp matches -100 if score @s spawner_mining_time >= @s spawner_mine_time run scoreboard players set @s spawner_mining_time 0