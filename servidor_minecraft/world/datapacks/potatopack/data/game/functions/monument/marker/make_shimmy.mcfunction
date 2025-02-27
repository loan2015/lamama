#Makes a shimmy


execute if entity @a[distance=..32,limit=1,nbt={SelectedItem:{tag:{CanPlaceOn:["minecraft:light_gray_stained_glass"]}}}] run tag @s add playerhold

execute if entity @s[tag=playerhold] run summon marker ~ ~ ~ {Tags:["shimmy"]}

tag @s remove playerhold
