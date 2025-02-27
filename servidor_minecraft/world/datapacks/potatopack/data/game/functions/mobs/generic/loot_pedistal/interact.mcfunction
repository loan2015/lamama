#Happens when the player interacts with loot pedistal

#flaggies
advancement revoke @s only game:pedistal_left
advancement revoke @s only game:pedistal_right

#Branch to marker
#data modify storage link:temp player set from entity @s
execute as @e[distance=..7,type=marker,tag=loot_pedistal,limit=1,sort=nearest] run function game:mobs/generic/loot_pedistal/check_and_give with entity @s data