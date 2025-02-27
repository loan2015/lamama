#Upgrades everyone's health

#flag
advancement revoke @s only game:eat_apple
clear @s glass_bottle

#add
execute unless score hp_up game matches 10.. run scoreboard players add hp_up game 1

#Notify
execute at @a run playsound minecraft:entity.player.burp ambient @s ~ ~ ~ 1 1.2
team join friendly @p
tellraw @a [{"selector":"@p","color":"white","italic":false},{"translate":"heart.use","italic":false}]
team join friendly_player @p

#Write health upgrades
scoreboard players operation temp temp = hp_up game
scoreboard players operation temp temp *= 2 numbers
scoreboard players add temp temp 20
execute store result storage link:temp temp.hp float 1 run scoreboard players get temp temp
function game:player/write_hp_upgrades with storage link:temp temp

#regen
effect give @a regeneration 3 5 false