#Gray particle sub functions

scoreboard players operation temp temp = 1hz gremloop
scoreboard players operation temp temp += n temp
function game:player/shield/raycast/particle/gray_iterate_down
execute if score random temp matches ..40 if score temp temp matches ..3 run particle dust 0.655 0.655 0.655 1 ~ ~ ~ 0.05 0.05 0.05 1 1 force
