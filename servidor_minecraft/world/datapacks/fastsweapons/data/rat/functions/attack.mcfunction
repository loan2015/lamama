attribute @s minecraft:generic.attack_speed modifier remove 726174-0-0-0-1
execute store result score speed= rat.time run attribute @s minecraft:generic.attack_speed get 10.1
scoreboard players set @s rat.time 200
scoreboard players operation @s rat.time /= speed= rat.time

advancement revoke @s[advancements={rat:attack=true}] only rat:attack change
advancement revoke @s[advancements={rat:kill=true}] only rat:kill change