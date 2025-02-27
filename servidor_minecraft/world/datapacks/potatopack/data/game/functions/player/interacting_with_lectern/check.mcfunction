#Checks to see if the player needs to get tagged


#Check to ensure lectern
scoreboard players set n temp 50
execute at @s anchored eyes run function game:player/interacting_with_lectern/raycast

#If fail, return to proper state
execute if entity @s[tag=looking_at_lectern] unless score n temp matches -100 run gamemode adventure @s
execute if entity @s[tag=looking_at_lectern] unless score n temp matches -100 run effect clear @s mining_fatigue

#If pass, apply tag and begin code
tag @s remove looking_at_lectern
execute if score n temp matches -100 run tag @s add looking_at_lectern
execute if entity @s[tag=looking_at_lectern] run gamemode survival @s
execute if entity @s[tag=looking_at_lectern] run effect give @s mining_fatigue 1 3 true

#Spawner checking
execute if score n temp matches -101 run function game:player/interacting_with_lectern/mine_spawner
execute unless score n temp matches -101 run scoreboard players set @s spawner_mining_time 0