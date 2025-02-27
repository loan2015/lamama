#Happens 1hz on mobs with tags custom1hz and charmed
#charm is the scoreboard that controls how long the mob is charmed for.
#charm2 controls how often the mob will attempt to apply agro. 
#charm uses and clears weakness!!!!! So if you want a temp charm with weakness in balancing, be wary.

#team join
team join green @s[team=!green]
team join red @s[scores={charm=2}]
team join red @s[scores={charm=4}]
team join yellow @s[scores={charm=6}]
team join yellow @s[scores={charm=8}]

#Agro and first time detection
scoreboard players remove @s charm2 1

#glowing
execute if entity @a[distance=..25,limit=1] run effect give @s glowing 5 0 true

#first time
execute if entity @s[scores={charm2=..-1},nbt={Silent:1b}] run tag @s add silent
execute if entity @s[scores={charm2=..-1},nbt=!{Silent:1b}] run data merge entity @s {Silent:0b}

#Targetting adjustment for skeletons, moves mainhand data to offhand if targetting player
#Swaps if entity is type projectilewielder
execute if entity @s[type=#game:projectilewielder,predicate=game:targetplayer,tag=!charmswapped] run function tools:helper/entity/charm/swap
execute if entity @s[type=#game:projectilewielder,predicate=!game:targetplayer,tag=charmswapped] run function tools:helper/entity/charm/swapback

#agro, change charm2=..7 tp down to 0 for faster re-agro when not by player
scoreboard players add @s[predicate=game:targetsomething,scores={charm2=..7}] charm2 1
execute if entity @s[predicate=game:targetplayer] run scoreboard players set @s charm2 0

execute if entity @s[scores={charm2=..0}] run damage @s 0 game:no_scale_no_i_frames_no_knockback by @e[distance=..16,type=#bb:hostile,type=!player,tag=!charmed,tag=!upgradeslime,limit=1]
execute if entity @s[scores={charm2=..0}] run data modify entity @s Silent set value 1b
execute if entity @s[scores={charm2=..0}] run effect give @s weakness 2 100 true
scoreboard players set @s[scores={charm2=..0}] charm2 10

#un-silent, 1 less than above
execute if entity @s[scores={charm2=9},tag=!silent] run data modify entity @s Silent set value 0b
execute if entity @s[scores={charm2=9},tag=!silent] run effect clear @s weakness

#remove charm
scoreboard players remove @s[scores={charm=1..}] charm 1
execute if entity @s[type=#game:projectilewielder,tag=charmswapped,scores={charm=0}] run function tools:helper/entity/charm/swapback
execute if entity @s[scores={charm=0},tag=!silent] run data modify entity @s Silent set value 0b
effect clear @s[scores={charm=0}] glowing
tag @s[scores={charm=0}] remove charmed
tag @s[scores={charm=0}] remove custom1hz
execute if entity @s[scores={charm=0},tag=castleguard] run function game:mobs/a1/guard/uncharm
execute if entity @s[scores={charm=0},tag=watcher] run function game:mobs/a2/watcher/uncharm
team leave @s[scores={charm=0}]
scoreboard players reset @s[scores={charm=0}] charm