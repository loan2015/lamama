#Was gonna be initialization function but changed how it works

#tag @s remove area2_spider
#effect give @s jump_boost infinite 250 true

scoreboard players set temp temp 0
data modify storage link:temp temp.scaler set value 0.2f
execute store success score tmep temp if entity @s[tag=!lurch,nbt={OnGround:0b,HurtTime:0s}] facing ^ ^-0.1 ^1 run function tools:helper/calls/push_looking with storage link:temp temp
execute if score temp temp matches 1 run tag @s add lurch
execute if entity @s[tag=lurch,nbt={OnGround:0b}] run tag @s remove lurch