#Ticks on hp number stands

#ticking
scoreboard players add @s life 1

#movement
execute if score @s life matches ..5 run tp @s ~ ~0.09 ~
execute if score @s life matches 6..8 run tp @s ~ ~0.04 ~
execute if score @s life matches 9..15 run tp @s ~ ~-0.07 ~
execute if score @s life matches 16..19 run tp @s ~ ~-0.14 ~
execute if score @s life matches 20.. run tp @s ~ ~-0.2 ~

#killing
execute if entity @a[distance=..2,limit=1,sort=nearest] run function health:kill_hpnumber
execute unless block ~ ~-0.1 ~ #minecraft:airish run function health:kill_hpnumber
execute if entity @s[scores={life=23..}] run function health:kill_hpnumber