#Unload shield i-frames

#clear res
effect clear @s[tag=!shield_i_frames_res] resistance

#Clear attributes
attribute @s generic.knockback_resistance modifier remove 7ce72fec-a74d-405f-b041-dd7ef8dee0f0

#slime
execute as @e[type=slime,distance=..20,tag=blocking_slime] at @s run function tools:helper/entity/voidkill

#flags
tag @s remove shield_i_frames
tag @s remove shield_i_frames_res
tag @s remove shield_target_i_frames