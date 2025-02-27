#20hz

team join gray @s
execute if block ~ ~ ~ #minecraft:airish run effect clear @s glowing
execute unless block ~ ~ ~ #minecraft:airish run effect give @s glowing

execute if entity @s[tag=!iniailize_vex] run tag @s add invuln
execute if entity @s[tag=!iniailize_vex] run tag @s add iniailize_vex

execute if entity @s[tag=!invuln,tag=vuln] unless entity @a[limit=1,distance=..32,tag=blocking] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=!invuln,tag=vuln] unless entity @a[limit=1,distance=..32,tag=blocking] run tag @s add invuln
execute if entity @s[tag=invuln,tag=vuln] unless entity @a[limit=1,distance=..32,tag=blocking] run tag @s remove vuln

execute if entity @s[tag=invuln,tag=!vuln] if entity @a[limit=1,distance=..32,tag=blocking] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=invuln,tag=!vuln] if entity @a[limit=1,distance=..32,tag=blocking] run tag @s add vuln
execute if entity @s[tag=invuln,tag=vuln] unless entity @a[limit=1,distance=..32,tag=blocking] run tag @s remove invuln
