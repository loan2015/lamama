### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add in1 math 1
scoreboard players operation #range math = in1 math
scoreboard players operation #range math -= in math

scoreboard players operation #m1 math = #range math
scoreboard players remove #m1 math 1
function tools:rng/zprivate/next_int
scoreboard players operation out math += in math

scoreboard players set #m1 math 0
scoreboard players remove in1 math 1