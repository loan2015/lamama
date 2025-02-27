#20hz on prisms

#particles
scoreboard players set red temp 0
execute if entity @s[tag=red] run scoreboard players set red temp 1
scoreboard players set orange temp 0
execute if entity @s[tag=orange] run scoreboard players set orange temp 1
scoreboard players set purple temp 0
execute if entity @s[tag=purple] run scoreboard players set purple temp 1
scoreboard players set yellow temp 0
execute if entity @s[tag=yellow] run scoreboard players set yellow temp 1
scoreboard players set green temp 0
execute if entity @s[tag=green] run scoreboard players set green temp 1
scoreboard players set blue temp 0
execute if entity @s[tag=blue] run scoreboard players set blue temp 1

execute if entity @s[tag=red] if score 1hz gremloop matches 1 at d6c00078-6f0e-42db-aac7-0f7458f5aa42 facing entity @s eyes positioned ^ ^ ^0.1 summon marker run function game:monument/marker/prism/summon_ray
execute if entity @s[tag=red] if score 1hz gremloop matches 11 at d6c00078-6f0e-42db-aac7-0f7458f5aa42 facing entity @s eyes positioned ^ ^ ^0.1 summon marker run function game:monument/marker/prism/summon_ray
execute if entity @s[tag=orange] if score 1hz gremloop matches 3 at d6c00078-6f0e-42db-aac7-0f7458f5aa42 facing entity @s eyes positioned ^ ^ ^0.1 summon marker run function game:monument/marker/prism/summon_ray
execute if entity @s[tag=orange] if score 1hz gremloop matches 13 at d6c00078-6f0e-42db-aac7-0f7458f5aa42 facing entity @s eyes positioned ^ ^ ^0.1 summon marker run function game:monument/marker/prism/summon_ray
execute if entity @s[tag=yellow] if score 1hz gremloop matches 5 at d6c00078-6f0e-42db-aac7-0f7458f5aa42 facing entity @s eyes positioned ^ ^ ^0.1 summon marker run function game:monument/marker/prism/summon_ray
execute if entity @s[tag=yellow] if score 1hz gremloop matches 15 at d6c00078-6f0e-42db-aac7-0f7458f5aa42 facing entity @s eyes positioned ^ ^ ^0.1 summon marker run function game:monument/marker/prism/summon_ray
execute if entity @s[tag=green] if score 1hz gremloop matches 6 at d6c00078-6f0e-42db-aac7-0f7458f5aa42 facing entity @s eyes positioned ^ ^ ^0.1 summon marker run function game:monument/marker/prism/summon_ray
execute if entity @s[tag=green] if score 1hz gremloop matches 16 at d6c00078-6f0e-42db-aac7-0f7458f5aa42 facing entity @s eyes positioned ^ ^ ^0.1 summon marker run function game:monument/marker/prism/summon_ray
execute if entity @s[tag=blue] if score 1hz gremloop matches 8 at d6c00078-6f0e-42db-aac7-0f7458f5aa42 facing entity @s eyes positioned ^ ^ ^0.1 summon marker run function game:monument/marker/prism/summon_ray
execute if entity @s[tag=blue] if score 1hz gremloop matches 18 at d6c00078-6f0e-42db-aac7-0f7458f5aa42 facing entity @s eyes positioned ^ ^ ^0.1 summon marker run function game:monument/marker/prism/summon_ray
execute if entity @s[tag=purple] if score 1hz gremloop matches 9 at d6c00078-6f0e-42db-aac7-0f7458f5aa42 facing entity @s eyes positioned ^ ^ ^0.1 summon marker run function game:monument/marker/prism/summon_ray
execute if entity @s[tag=purple] if score 1hz gremloop matches 20 at d6c00078-6f0e-42db-aac7-0f7458f5aa42 facing entity @s eyes positioned ^ ^ ^0.1 summon marker run function game:monument/marker/prism/summon_ray



#remove
execute unless block ~ ~ ~ #minecraft:prisms run kill @s