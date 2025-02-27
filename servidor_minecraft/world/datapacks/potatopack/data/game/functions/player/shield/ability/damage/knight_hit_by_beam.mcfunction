#when knight is hit!

scoreboard players add @s animation 1

execute if score @s animation matches 15 run item replace entity @s armor.head with air
execute if score @s animation matches 30 run item replace entity @s armor.chest with air
execute if score @s animation matches 45 run item replace entity @s armor.legs with air
execute if score @s animation matches 60 run item replace entity @s armor.feet with air
execute if score @s animation matches 45 run item replace entity @s weapon.offhand with air
execute if score @s animation matches 90 run item replace entity @s weapon.mainhand with air

execute if score @s animation matches 15 run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.2 20 force
execute if score @s animation matches 30 run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.2 20 force
execute if score @s animation matches 45 run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.2 20 force
execute if score @s animation matches 60 run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.2 20 force
execute if score @s animation matches 90 run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.2 20 force
execute if score @s animation matches 40 run tag @s remove area4_brute

execute if score @s animation matches 15 run effect clear @s resistance
execute if score @s animation matches 30 run effect clear @s resistance
execute if score @s animation matches 45 run effect clear @s resistance
execute if score @s animation matches 60 run effect clear @s resistance
execute if score @s animation matches 90 run effect clear @s resistance

execute if score @s animation matches 15 run effect give @s resistance infinite 3 true
execute if score @s animation matches 30 run effect give @s resistance infinite 2 true
execute if score @s animation matches 45 run effect give @s resistance infinite 1 true
execute if score @s animation matches 60 run effect give @s resistance infinite 0 true

execute if score @s animation matches 15 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 0.5
execute if score @s animation matches 30 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 0.5
execute if score @s animation matches 45 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 0.5
execute if score @s animation matches 60 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 0.5
execute if score @s animation matches 90 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 0.5

execute if score @s animation matches 160 run playsound entity.ghast.ambient hostile @a ~ ~ ~ 1 2

execute if score @s animation matches 160 run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Emoticon Flushed"}'},SkullOwner:{Id:[I;938300409,-1423554863,-1080136282,292231905],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjc5ZDcyMmJmODM2MzE4ZmQxMWVlYzI2MGZhOWZkMzJlMjhmMTlmNTAzZDY2OWYyNTkxODc3ZDgyODVlYjZjMyJ9fX0="}]}}} 1
execute if score @s animation matches 160 run effect give @s slowness infinite 10 true

#End laser and add flag to set flags
scoreboard players set end temp 1
tag @a[limit=1,sort=nearest,tag=blocking] add light_particles
tag @a[limit=1,sort=nearest,tag=blocking] add light_placed
