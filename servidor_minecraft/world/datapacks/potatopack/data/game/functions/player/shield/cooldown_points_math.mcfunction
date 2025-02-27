#Gets the xp points to apply for the shield coolwodn

scoreboard players operation points math = level math
execute if score level math matches 0..15 run scoreboard players operation points math *= 2 numbers
execute if score level math matches 16..30 run scoreboard players operation points math *= 5 numbers
execute if score level math matches 31.. run scoreboard players operation points math *= 9 numbers

execute if score level math matches 0..15 run scoreboard players add points math 7
execute if score level math matches 16..30 run scoreboard players remove points math 38
execute if score level math matches 31.. run scoreboard players remove points math 158

scoreboard players operation percent math = @s shield_cd
scoreboard players operation percent math *= 1000 numbers
scoreboard players operation percent math /= @s shield_cd_start

scoreboard players operation points math *= percent math
scoreboard players operation points math /= 1000 numbers

execute store result storage link:temp temp.points float 1 run scoreboard players get points math
function game:player/shield/cooldown_points with storage link:temp temp