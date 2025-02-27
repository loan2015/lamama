#5hz on markers

#Light call
function tools:helper/calls/getlight

#Kill if low light
execute if score @s lightcall matches ..4 run function game:player/shield/ability/floating_copper/kill
