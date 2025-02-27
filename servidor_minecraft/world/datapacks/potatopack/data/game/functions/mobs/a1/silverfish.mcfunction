#5hz on silverfish
function tools:helper/calls/getlight
execute if score @s lightcall matches 12.. run data merge entity @s {Fire:999s}
execute if score @s lightcall matches 12.. run damage @s 1 game:no_scale_no_i_frames_no_knockback
execute if score @s lightcall matches 12.. as @p if entity @s[tag=!rats.notify] run function game:player/notify/rats