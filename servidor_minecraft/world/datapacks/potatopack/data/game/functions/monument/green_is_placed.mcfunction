#hapens when monument item is placed

title @s times 20 80 40
title @s title [{"translate":" ","italic":false}]
title @s subtitle [{"translate":"notify.monument.green","italic":false},{"translate":"notify.monument.place","color":"green","italic":false}]
playsound minecraft:sfx.wool_placed record @s ~ ~ ~ 1 1
execute at @s anchored eyes positioned ^ ^ ^2 run particle minecraft:firework ~ ~2 ~ 2 1.5 2 0.05 20 force @s