#Happens when the player uses a carrot on a stick

#Store inventory
data modify storage link:temp player set from entity @s

execute if data storage link:temp player.Inventory[{Slot:-106b,tag:{custom_shield:1},id:"minecraft:carrot_on_a_stick"}] unless data storage link:temp player.SelectedItem{id:"minecraft:carrot_on_a_stick"} run title @s actionbar {"translate":"custom_shield.cooldown"}
execute if data storage link:temp player.Inventory[{Slot:-106b,tag:{custom_shield:1},id:"minecraft:carrot_on_a_stick"}] unless data storage link:temp player.SelectedItem{id:"minecraft:carrot_on_a_stick"} run playsound minecraft:block.note_block.didgeridoo record @s ~ ~ ~ 1 0.5



#flags
scoreboard players set @s carrot 0
