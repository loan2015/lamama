#The base function that does loops

#Add to timer
scoreboard players add 2s gremloop 1
scoreboard players add 5hz gremloop 1
scoreboard players add 10hz gremloop 1
scoreboard players add 1hz gremloop 1
scoreboard players add 3s gremloop 1
scoreboard players add 4s gremloop 1
scoreboard players add 10s gremloop 1
scoreboard players add 20s gremloop 1

#Rng
execute if score 1hz gremloop matches 11 run function tools:loop/tick/10t_rng_rolls
execute if score 1hz gremloop matches 1 run function tools:loop/tick/10t_rng_rolls

#Based off timer, execute functions
function tools:loop/20hz
execute if score 5hz gremloop matches 4.. run function tools:loop/5hz
execute if score 5hz gremloop matches 4.. run scoreboard players set 5hz gremloop 0
execute if score 10hz gremloop matches 2.. run function tools:loop/10hz
execute if score 10hz gremloop matches 2.. run scoreboard players set 10hz gremloop 0
execute if score 1hz gremloop matches 20.. run function tools:loop/1hz
execute if score 1hz gremloop matches 20.. run scoreboard players set 1hz gremloop 0
execute if score 2s gremloop matches 40.. run scoreboard players set 2s gremloop 0
execute if score 3s gremloop matches 60.. run scoreboard players set 3s gremloop 0
execute if score 4s gremloop matches 80.. run scoreboard players set 4s gremloop 0
execute if score 10s gremloop matches 200.. run function tools:loop/10s
execute if score 10s gremloop matches 200.. run scoreboard players set 10s gremloop 0
execute if score 20s gremloop matches 400.. run scoreboard players set 20s gremloop 0

