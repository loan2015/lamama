#Damage lds is the damage to do! So 5000 will do 5hp damage
#iframes lds if the mob should or shouldn't have i-frames
#knockback lds if the mob should or shouldn't take knockback
#scaletoarmor lds if the mob should or shouldn't take scaled (non-true) damage

#LDS stands for Link Damage System <3 

#Create a macro for dynamic damage
data modify storage game:mob Damage set value {Damage:0f}
execute store result storage game:mob Damage.Damage float 0.001 run scoreboard players get damage lds
execute if entity @s[type=!player] run function tools:helper/entity/damager with storage game:mob Damage
execute if entity @s[type=player] run function tools:helper/entity/damager_player with storage game:mob Damage