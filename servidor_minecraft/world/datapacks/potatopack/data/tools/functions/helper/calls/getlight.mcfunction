#Gets the light of the position where this call is made and store it to the entity running the call
#score saved to "lightcall"
scoreboard players set @s lightcall 0

#Bisection to optimize, thanks 14er

#step 1
execute if predicate game:light8to15 run scoreboard players set @s lightcall 8

#step2
execute if score @s lightcall matches 8 if predicate game:light12to15 run scoreboard players set @s lightcall 12
execute if score @s lightcall matches 0 if predicate game:light4to7 run scoreboard players set @s lightcall 4

#step 3
execute if score @s lightcall matches 12 if predicate game:light14to15 run scoreboard players set @s lightcall 14
execute if score @s lightcall matches 8 if predicate game:light10to11 run scoreboard players set @s lightcall 10
execute if score @s lightcall matches 4 if predicate game:light6to7 run scoreboard players set @s lightcall 6
execute if score @s lightcall matches 0 if predicate game:light2to3 run scoreboard players set @s lightcall 2

#step 4
execute if score @s lightcall matches 14 if predicate game:light15 run scoreboard players set @s lightcall 15
execute if score @s lightcall matches 12 if predicate game:light13 run scoreboard players set @s lightcall 13
execute if score @s lightcall matches 10 if predicate game:light11 run scoreboard players set @s lightcall 11
execute if score @s lightcall matches 8 if predicate game:light9 run scoreboard players set @s lightcall 9
execute if score @s lightcall matches 6 if predicate game:light7 run scoreboard players set @s lightcall 7
execute if score @s lightcall matches 4 if predicate game:light5 run scoreboard players set @s lightcall 5
execute if score @s lightcall matches 2 if predicate game:light3 run scoreboard players set @s lightcall 3
execute if score @s lightcall matches 0 if predicate game:light1 run scoreboard players set @s lightcall 1
