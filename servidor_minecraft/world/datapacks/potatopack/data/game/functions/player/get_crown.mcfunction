#Gives the player le crown

scoreboard players set pass temp 0
execute if data entity 8ca4ebd2-16a4-4cc2-97fa-0cd15be76602 ArmorItems[3].tag run scoreboard players set pass temp 1
execute if score pass temp matches 1.. run item replace entity @s armor.head from entity 8ca4ebd2-16a4-4cc2-97fa-0cd15be76602 armor.head
execute if score pass temp matches 1.. run tag @a add king_passive
execute if score pass temp matches 1.. run tellraw @a [{"selector":"@s"},{"translate":"notify.king.unlock"}]
execute if score pass temp matches 1.. run tellraw @a [{"translate":"passive_ability.king.name"}]
execute if score pass temp matches 1.. run tellraw @a [{"translate":"passive_ability.king.detail"}]
execute if score pass temp matches 1.. as @a at @s run playsound ui.toast.challenge_complete record @s ~ ~ ~ 0.5 0.8

item replace entity 8ca4ebd2-16a4-4cc2-97fa-0cd15be76602 armor.head with air