#Central ticking for the spawner tweaker datapack

#Setup needed variables
function spawner_tweaker:load

#Checks to see if someone's in creative, if so, look for someone that might be ready to engage in GAMING
execute if entity @a[limit=1,gamemode=!adventure,gamemode=!survival] as @a[limit=1,sort=arbitrary,nbt={SelectedItem:{id:"minecraft:spawner"}}] at @s run function spawner_tweaker:spawner_tweaking/player/holding_spawner

#If nobody is currently holding a spawner, unload anything that needs unloading
execute if score loaded spawner_tweaker matches 1 if score holding_spawner spawner_tweaker matches 0 run function spawner_tweaker:unload
scoreboard players set holding_spawner spawner_tweaker 0

