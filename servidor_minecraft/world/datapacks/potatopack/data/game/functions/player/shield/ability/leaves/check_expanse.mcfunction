#checks to see if lef can expaaaand
execute store result storage link:temp temp.distance float 1 run scoreboard players get n2 temp
function game:player/shield/ability/leaves/check_expanse_step with storage link:temp temp

scoreboard players add n2 temp 1
execute if score n2 temp <= n temp unless entity @s[tag=end_leaf_expand_loop] run function game:player/shield/ability/leaves/check_expanse