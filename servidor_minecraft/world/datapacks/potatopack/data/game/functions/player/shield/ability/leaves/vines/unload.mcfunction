#unloads the spot


execute if block ~ ~ ~ vine[east=true] run setblock ~ ~ ~ sculk_vein[east=true]
execute if block ~ ~ ~ vine[west=true] run setblock ~ ~ ~ sculk_vein[west=true]
execute if block ~ ~ ~ vine[north=true] run setblock ~ ~ ~ sculk_vein[north=true]
execute if block ~ ~ ~ vine[south=true] run setblock ~ ~ ~ sculk_vein[south=true]
execute if block ~ ~ ~ vine[up=true] run setblock ~ ~ ~ sculk_vein[up=true]
execute if block ~ ~ ~ twisting_vines_plant run setblock ~ ~ ~ air
execute if block ~ ~ ~ twisting_vines run setblock ~ ~ ~ air

function tools:helper/calls/remove_forceload
kill @s