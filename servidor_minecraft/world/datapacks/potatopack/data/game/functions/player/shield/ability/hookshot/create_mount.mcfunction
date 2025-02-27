#Makes the mount and gobledygook
$summon block_display ~ ~0.6 ~ {view_range:100f,width:100f,height:100f,Tags:["hookshot_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,0.1f,0.5f],scale:[1f,1f,10f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}},Rotation:[$(x)f,$(y)f]}
execute at @s run tp @e[distance=..1,limit=1,type=block_display,sort=nearest] ~ ~0.6 ~ ~ ~
ride @s mount @e[distance=..1,limit=1,type=block_display,sort=nearest]
execute on vehicle run data merge entity @s {interpolation_duration:15,teleport_duration:15}

