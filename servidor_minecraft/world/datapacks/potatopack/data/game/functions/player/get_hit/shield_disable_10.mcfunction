#Disable shield when you get hit
execute if entity @s[tag=!blocking] run return 1
scoreboard players add @s[tag=!shield_disabled] shield_cd 10
stopsound @s ambient item.shield.break
playsound minecraft:item.shield.break ambient @s ~ ~ ~ 0.3 0.8