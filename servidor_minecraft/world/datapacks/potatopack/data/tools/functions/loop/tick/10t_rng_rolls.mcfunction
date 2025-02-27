#10 tick rng rolls
execute store result score random temp run random value 1..3
execute if score random temp matches 1 run scoreboard players set random_10t gremloop 0
execute unless score random temp matches 1 run scoreboard players set random_10t gremloop 1