#Knight 5hz

#Initialize
execute if entity @s[tag=!knight_ini] run effect give @s resistance infinite 4 true
execute if entity @s[tag=!knight_ini] run item replace entity @s weapon.mainhand from block -29 135 -55 container.0
execute if entity @s[tag=!knight_ini] run tag @s add knight_ini
