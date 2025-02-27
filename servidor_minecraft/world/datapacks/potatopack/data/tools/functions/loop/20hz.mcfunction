#All functions that activate per tick here
execute as @a[scores={snowball=1..,admin=1..},gamemode=creative] at @s run function tools:tp/jump
gamemode spectator @a[gamemode=creative,scores={admin=1..},x_rotation=-90]
gamemode creative @a[gamemode=spectator,scores={admin=1..},x_rotation=90]

#branching
function game:loop/20hz

#night vision, taken from initially then repurposed. Remove on publishing
scoreboard players add @a[scores={adri_nv=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] adri_nv2 1
scoreboard players set @a[scores={adri_nv=1..}] adri_nv 0
effect give @a[scores={adri_nv2=1}] minecraft:night_vision 100 100 true
effect clear @a[scores={adri_nv2=2}] minecraft:night_vision
scoreboard players set @a[scores={adri_nv2=2..}] adri_nv2 0

