#1hz at bonus monument 1157 -12 1084


#Individual checks
execute unless score bonus1 wool matches 1.. if block 1157 -12 1084 minecraft:chiseled_bookshelf{Items:[{tag:{bonus:1}}]} run scoreboard players set bonus1 wool 1
execute unless score bonus2 wool matches 1.. if block 1157 -12 1084 minecraft:chiseled_bookshelf{Items:[{tag:{bonus:2}}]} run scoreboard players set bonus2 wool 1
execute unless score bonus3 wool matches 1.. if block 1157 -12 1084 minecraft:chiseled_bookshelf{Items:[{tag:{bonus:3}}]} run scoreboard players set bonus3 wool 1
execute unless score bonus4 wool matches 1.. if block 1157 -12 1084 minecraft:chiseled_bookshelf{Items:[{tag:{bonus:4}}]} run scoreboard players set bonus4 wool 1
execute unless score bonus5 wool matches 1.. if block 1157 -12 1084 minecraft:chiseled_bookshelf{Items:[{tag:{bonus:5}}]} run scoreboard players set bonus5 wool 1
execute unless score bonus6 wool matches 1.. if block 1157 -12 1084 minecraft:chiseled_bookshelf{Items:[{tag:{bonus:6}}]} run scoreboard players set bonus6 wool 1


#Completion check
scoreboard players set all_bonus wool 0
execute if score bonus1 wool matches 1.. if score bonus2 wool matches 1.. if score bonus3 wool matches 1.. if score bonus4 wool matches 1.. if score bonus5 wool matches 1.. if score bonus6 wool matches 1.. run scoreboard players set all_bonus wool 1

#Advancement
execute if score all_bonus wool matches 1.. as @a[tag=!bonus_complete] at @s run function game:monument/bonus/bonus_complete

