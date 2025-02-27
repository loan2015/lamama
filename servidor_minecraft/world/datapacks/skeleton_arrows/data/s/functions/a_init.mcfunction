tag @s add arrow_init

execute positioned ~ ~-1 ~ if entity @e[type=skeleton,distance=..1] if entity @a[distance=..6] at @s run function s:a_slow_n
execute positioned ~ ~-1 ~ if entity @e[type=skeleton,distance=..1] if entity @a[distance=6..15] at @s run function s:a_slow_f
execute positioned ~ ~-1 ~ if entity @e[type=wither_skeleton,distance=..1] if entity @a[distance=..5] at @s run function s:a_slow_n
execute positioned ~ ~-1 ~ if entity @e[type=wither_skeleton,distance=..1] if entity @a[distance=5..13] at @s run function s:a_slow_f
execute positioned ~ ~-1 ~ if entity @e[type=stray,distance=..1] if entity @a[distance=..5] at @s run function s:a_slow_n
execute positioned ~ ~-1 ~ if entity @e[type=stray,distance=..1] if entity @a[distance=5..13] at @s run function s:a_slow_f

execute positioned ~ ~-1 ~ store result entity @s damage double 0.0075 run data get entity @e[distance=..1,type=#minecraft:skeletons,limit=1,sort=nearest] Attributes[{Name:"minecraft:generic.attack_damage"}].Base 100
execute if entity @s[nbt={custom_potion_effects:[{id:"minecraft:slowness"}]}] run data merge entity @s {custom_potion_effects:[{id:"minecraft:slowness",duration:1,amplifier:0,ambient:0b}]}
