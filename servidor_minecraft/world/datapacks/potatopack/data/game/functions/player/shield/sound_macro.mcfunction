#Macro for sounds
$execute if entity @s[tag=light_placed] run playsound minecraft:entity.allay.item_given record @s ~ ~ ~ $(volume) $(pitch)
$execute if entity @s[tag=sculk_stopped] run playsound minecraft:entity.allay.item_thrown record @s ~ ~ ~ $(volume) $(pitch)