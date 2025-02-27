#This function is run on all players at the hz in the filename
function game:areas/music

#attributes
attribute @s minecraft:generic.armor_toughness base set 100

#Saturation
execute store result score temp temp run data get entity @s foodLevel

execute if score temp temp matches ..10 run effect give @s saturation 1 0 true
execute if score temp temp matches 12.. run effect give @s hunger 1 200 true

#max damage
execute store result score temp temp run attribute @s generic.attack_damage get 100
execute if score temp temp >= max_damage game run scoreboard players operation max_damage game = temp temp

#Lobby res
effect give @s[x=15,y=242,z=-49,distance=..30] resistance 5 9 true
effect give @s[x=15,y=242,z=-49,distance=..30,gamemode=!creative] weakness 5 9 true

#near bonus
scoreboard players set temp temp 0
execute if entity @s[tag=!bonus_notify] store result score temp temp run clone ~-5 ~-2 ~-5 ~5 ~2 ~5 ~-5 ~-2 ~-5 filtered minecraft:lectern[has_book=true]{Book:{tag:{isbonus:1}}} move
execute if entity @s[tag=!bonus_notify] if score temp temp matches 1.. run function game:player/notify/bonus

#Triggers
scoreboard players enable @a difficulty
scoreboard players enable @a campfire
scoreboard players enable @a teleport_to_teammate
advancement revoke @s[advancements={game:start_map=true}] only game:start_map
advancement revoke @s[advancements={game:start_map2=true}] only game:start_map2