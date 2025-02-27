
$execute store result score clear_check temp run clear @p $(id)$(tag) 0
execute if score clear_check temp matches 0 run tag @s add succeed