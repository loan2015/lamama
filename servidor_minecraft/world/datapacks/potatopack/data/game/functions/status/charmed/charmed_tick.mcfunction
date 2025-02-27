#Charmed ticking

#effects
effect give @s glowing 1 0 true
effect give @s resistance 1 0 true

#team
team join dark_purple @s
execute if score @s link.charmed matches ..40 run team join dark_red @s
execute if score @s link.charmed matches 41..80 run team join red @s
execute if score @s link.charmed matches 81..120 run team join gold @s

#Is it targetting the player?
tag @s remove target_player
tag @s remove has_target
execute if entity @s[predicate=game:targetplayer] run tag @s add target_player
execute if entity @s[tag=!target_player] if entity @s[predicate=game:targetsomething] run tag @s add has_target

#Toggle to weakened state
execute if entity @s[tag=target_player,tag=!charm_weak] run function game:status/charmed/weaken

#Untoggle weakened state
execute if entity @s[tag=!target_player,tag=charm_weak] run function game:status/charmed/unweaken

#Projectile checking
execute if entity @s[tag=charm_weak,tag=target_player] as @e[distance=..5,type=#game:charm_projectiles,tag=!charm_projectile_check] run function game:status/charmed/check_projectile with entity @s

#Failsafe to redirect attention
execute if score @s[tag=target_player] link.charmed.search matches 2 run attribute @s generic.follow_range modifier add 919fa66b-a8b4-47dc-bdf3-8ae94e522c96 "charmed" -999 add
execute if score @s link.charmed.search matches 0 run attribute @s generic.follow_range modifier remove 919fa66b-a8b4-47dc-bdf3-8ae94e522c96

#Redirect attention
scoreboard players add @s link.charmed.search 0
execute if entity @s[tag=!has_target] if score @s link.charmed.search matches ..0 run function game:status/charmed/look_for_target
execute if score @s link.charmed.search matches 1.. run scoreboard players remove @s link.charmed.search 1

#Ticking
scoreboard players remove @s link.charmed 1
execute if score @s link.charmed matches 0 run function game:status/charmed/uncharm