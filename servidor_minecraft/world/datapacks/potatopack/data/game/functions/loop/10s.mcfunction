#All functions that activate every 10s go here

execute as @a at @s run function game:player/p10s

##All mob ticking below


execute as @e[type=text_display,tag=hpnumber,predicate=!game:rider] run function health:kill_hpnumber

##Mob ticking end