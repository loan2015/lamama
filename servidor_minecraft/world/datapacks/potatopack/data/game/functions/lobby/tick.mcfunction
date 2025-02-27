#20hz in lobby if one player is there

execute if score 1hz gremloop matches 1 run setblock 23 244 -42 air
execute if score 1hz gremloop matches 1 run setblock 23 244 -42 minecraft:warped_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"light_blue",has_glowing_text:0b,messages:['{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/tellraw @s {\\"translate\\":\\"Click here for more info\\",\\"color\\":\\"blue\\",\\"italic\\":false,\\"underlined\\":true,\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://discord.gg/ctmc\\"}}"},"translate":"lobby.sign.ctmc.1"}','{"text":" "}','{"underlined":true,"color":"blue","translate":"lobby.sign.ctmc.2"}','{"text":""}']},is_waxed:1b}
execute if score 1hz gremloop matches 11 run setblock 23 244 -42 air
execute if score 1hz gremloop matches 11 run setblock 23 244 -42 minecraft:warped_wall_sign[facing=north,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"light_blue",has_glowing_text:0b,messages:['{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/tellraw @s {\\"translate\\":\\"Click here for more info\\",\\"color\\":\\"blue\\",\\"italic\\":false,\\"underlined\\":true,\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://discord.gg/ctmc\\"}}"},"translate":"lobby.sign.ctmc.1"}','{"text":" "}','{"underlined":true,"color":"dark_purple","translate":"lobby.sign.ctmc.2"}','{"text":""}']},is_waxed:1b}

execute if score 1hz gremloop matches 1 run data merge entity @e[type=text_display,tag=lobbydisplay,tag=flash1,limit=1] {text:'{"translate":"⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠\\nResource Pack Required!\\nInstall and relog\\n⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠","color":"red","italic":false}'}
execute if score 1hz gremloop matches 11 run data merge entity @e[type=text_display,tag=lobbydisplay,tag=flash1,limit=1] {text:'{"translate":"⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠\\nResource Pack Required!\\nInstall and relog\\n⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠","color":"dark_red","italic":false}'}

execute if score 1hz gremloop matches 1 run data merge entity @e[type=text_display,tag=lobbydisplay,tag=flash2,limit=1] {text:'{"translate":"⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠\\nResource Pack Required!\\n Install and relog \\n⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠","color":"red","italic":false}'}
execute if score 1hz gremloop matches 11 run data merge entity @e[type=text_display,tag=lobbydisplay,tag=flash2,limit=1] {text:'{"translate":"⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠\\nResource Pack Required!\\n Install and relog \\n⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠⚠","color":"dark_red","italic":false}'}

execute positioned 1 242 -35 if entity @a[distance=..50,limit=1] as @e[distance=..2,type=minecraft:item_display,tag=link_display] at @s facing entity @p eyes facing ^ ^-0.2 ^-1 run tp @s ~ ~ ~ ~ ~

execute if score 5hz gremloop matches 1 positioned 6 241 -58 as @e[type=interaction,limit=1,sort=nearest] at @s run particle soul_fire_flame ~ ~1 ~ 0.23 0.2 0.23 0 2 force

#Particles for difficulty
scoreboard players operation temp temp = 4s gremloop
data modify storage link:temp particles set value {}
scoreboard players add a2f7e5f7-d403-4835-95a4-305ce13e19e2 temp 1
scoreboard players add a2f7e5f7-d403-4835-95a4-305ce13e19e2 animation 1
scoreboard players add a2f7e5f7-d403-4835-95a4-305ce13e19e2 difficulty 1
execute if score 4s gremloop matches 20 run scoreboard players set a2f7e5f7-d403-4835-95a4-305ce13e19e2 temp 1
execute if score 4s gremloop matches 40 run scoreboard players set a2f7e5f7-d403-4835-95a4-305ce13e19e2 animation 1
execute if score 4s gremloop matches 60 run scoreboard players set a2f7e5f7-d403-4835-95a4-305ce13e19e2 difficulty 1
execute store result storage link:temp particles.1 float 0.025 run scoreboard players get temp temp
execute store result storage link:temp particles.2 float 0.025 run scoreboard players get a2f7e5f7-d403-4835-95a4-305ce13e19e2 temp
execute store result storage link:temp particles.3 float 0.025 run scoreboard players get a2f7e5f7-d403-4835-95a4-305ce13e19e2 animation
execute store result storage link:temp particles.4 float 0.025 run scoreboard players get a2f7e5f7-d403-4835-95a4-305ce13e19e2 difficulty
execute as a2f7e5f7-d403-4835-95a4-305ce13e19e2 at @s run function game:lobby/difficulty_particles with storage link:temp particles
execute as b739ddc5-14d2-45f3-b58f-8397a6b3a50d at @s run function game:lobby/difficulty_particles_2 with storage link:temp particles