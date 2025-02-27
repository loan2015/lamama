#Happens when you use an eyes

#advancement
advancement revoke @s only game:eye

#cooldown
scoreboard players add @s charmed_cooldown 0
execute if score @s charmed_cooldown matches 1.. run return 1

#raycast
execute at @s anchored eyes positioned ^0.5 ^-0.5 ^1 run summon marker ~ ~ ~ {UUID:[I;-140208739,2114471793,-1477720465,2094544871]}
scoreboard players set n temp 200
scoreboard players set end temp 0
execute at @s anchored eyes positioned ^ ^ ^0.01 run function game:items/eye/raycast

#succeed
execute if score end temp matches 1 run scoreboard players add @s charmed_cooldown 5

#fail
execute unless score n temp matches 200 if score 5hz gremloop matches 1 run playsound minecraft:block.note_block.didgeridoo record @p ~ ~ ~ 1 0.5
execute unless score n temp matches 200 if score 5hz gremloop matches 1 run title @s actionbar {"translate":"eye.fail","italic":false}

#Kill marker
kill f7a4959d-7e08-4771-a7eb-c66f7cd837e7