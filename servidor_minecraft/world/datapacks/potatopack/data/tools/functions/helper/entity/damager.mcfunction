#Actually deals the damage to the mobs, with type being dependant on scores

$execute if score scaletoarmor lds matches 1.. if score knockback lds matches 1.. if score iframes lds matches 1.. run damage @s $(Damage) game:scale_i_frames_knockback by @p
$execute if score scaletoarmor lds matches ..0 if score knockback lds matches 1.. if score iframes lds matches 1.. run damage @s $(Damage) game:no_scale_i_frames_knockback by @p
$execute if score scaletoarmor lds matches 1.. if score knockback lds matches 1.. if score iframes lds matches ..0 run damage @s $(Damage) game:scale_no_i_frames_knockback by @p
$execute if score scaletoarmor lds matches ..0 if score knockback lds matches 1.. if score iframes lds matches ..0 run damage @s $(Damage) game:no_scale_no_i_frames_knockback by @p

$execute if score scaletoarmor lds matches 1.. if score knockback lds matches ..0 if score iframes lds matches 1.. run damage @s $(Damage) game:scale_i_frames_no_knockback by @p
$execute if score scaletoarmor lds matches ..0 if score knockback lds matches ..0 if score iframes lds matches 1.. run damage @s $(Damage) game:no_scale_i_frames_no_knockback by @p
$execute if score scaletoarmor lds matches 1.. if score knockback lds matches ..0 if score iframes lds matches ..0 run damage @s $(Damage) game:scale_no_i_frames_no_knockback by @p
$execute if score scaletoarmor lds matches ..0 if score knockback lds matches ..0 if score iframes lds matches ..0 run damage @s $(Damage) game:no_scale_no_i_frames_no_knockback by @p