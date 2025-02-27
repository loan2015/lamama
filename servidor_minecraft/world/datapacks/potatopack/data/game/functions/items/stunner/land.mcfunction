#Happens when the stunner lands

particle flash ~ ~ ~ 1.5 0.1 1.5 1 5 force
particle dust 0.941 0.925 0 1 ~ ~ ~ 3 1 3 0.1 50 force

playsound entity.firework_rocket.twinkle_far ambient @a ~ ~ ~ 1 1.6

tag @e[distance=..8,type=#minecraft:hasai,type=!player,type=!wolf] add link.stunned
scoreboard players add @e[distance=..8,type=#minecraft:hasai,type=!player,type=!wolf] link.stunned 160
$execute as @e[distance=..8,type=#minecraft:hasai,type=!player,type=!wolf] run damage @s $(damage) game:scale_no_i_frames_knockback by @p from @e[distance=..10,type=marker,limit=1,sort=nearest,tag=link.stun_star]

kill @s