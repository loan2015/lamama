#Reduces temp temp until it is <20

execute unless score temp temp matches ..20 run scoreboard players remove temp temp 20
execute unless score temp temp matches ..20 run function game:player/shield/raycast/particle/gray_iterate_down