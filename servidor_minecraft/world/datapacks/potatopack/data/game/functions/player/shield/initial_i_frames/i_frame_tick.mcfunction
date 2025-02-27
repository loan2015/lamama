#Ticking for shield i-frames

#Resistance
execute if entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]},nbt=!{active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] run tag @s add shield_i_frames_res
effect give @s resistance 1 4 true

#Attributes
execute if score @s shield_i_frames matches 1 run attribute @s generic.knockback_resistance modifier add 7ce72fec-a74d-405f-b041-dd7ef8dee0f0 "shield_i_frames" 100 add

#failsafe
execute if score @s shield_i_frames matches 1 if predicate game:target_entity run tag @s add shield_target_i_frames

#Slime
execute if score @s shield_i_frames matches 1 run summon slime ~ ~50 ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,Glowing:0b,NoAI:1b,Size:1,Tags:["blocking_slime","laser_immune","exception"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
execute at @s anchored eyes positioned ^ ^ ^1 run tp @e[type=slime,distance=..60,tag=blocking_slime,limit=1,sort=nearest] ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^1 at @e[type=slime,distance=..1,tag=blocking_slime,limit=1,sort=nearest] positioned ~-1 ~-1 ~-1 if entity @e[type=arrow,limit=1,sort=nearest,dx=1,dy=1,dz=1,nbt=!{inGround:1b}] run tag @s add just_hit

#get hit
execute if entity @s[nbt=!{HurtTime:0s}] at @s run stopsound @a[distance=..16] * entity.player.hurt
execute if entity @s[tag=just_hit] at @s run playsound item.shield.block player @a ~ ~ ~ 1 1

#flags
tag @s remove i_frame_hurt
tag @s add shield_i_frames
