#When to apply health function
execute as @e[tag=!spawnhealth,type=#minecraft:hasai,type=!player] run function health:maxhealth
execute as @e[tag=!mh_exception,type=#minecraft:hasai,tag=spawnhealth,nbt={HurtTime:9s},type=!player] run function health:healthupdate
scoreboard players add health1hz numbers 1
execute if score health1hz numbers = 20 numbers run function health:healthcounter
execute if score health1hz numbers matches 20.. run scoreboard players set 1hz numbers 0