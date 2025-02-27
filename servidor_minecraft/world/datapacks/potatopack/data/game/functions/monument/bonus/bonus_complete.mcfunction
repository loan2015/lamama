#hapens when monument item is placed

tag @s add bonus_complete
title @s times 20 80 40
title @s title [{"translate":"notify.monument.bonus_complete","italic":false}]
title @s subtitle [{"translate":"notify.monument.bonus_complete2","italic":false}]
loot give @s loot game:bonus_complete

forceload add 70 8 59 -10
clone 59 51 -10 70 61 8 1147 -14 1070 filtered sculk
#execute positioned 1155 -10 1086 run kill @e[distance=..4,type=minecraft:painting,limit=1,sort=nearest]