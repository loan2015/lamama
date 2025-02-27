# execute store result entity @s Motion[0] double 0.00006 run data get entity @s Motion[0] 10000
# execute store result entity @s Motion[2] double 0.00006 run data get entity @s Motion[2] 10000
# execute store result score $m test run data get entity @s Motion[1] 10000
# scoreboard players add $m test 30000
# execute store result entity @s Motion[1] double 0.0008 run scoreboard players get $m test

execute store result entity @s Motion[0] double 0.00008 run data get entity @s Motion[0] 10000
execute store result entity @s Motion[1] double 0.00009 run data get entity @s Motion[1] 10000
execute store result entity @s Motion[2] double 0.00008 run data get entity @s Motion[2] 10000
