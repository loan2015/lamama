#Particles for difficulty
tp @s ~ ~ ~ ~-9 ~

$execute as @a[limit=1,sort=nearest] if entity @s[tag=!challenge_mode,tag=!light_mode] as b739ddc5-14d2-45f3-b58f-8397a6b3a50d at @s positioned ~ ~$(2) ~ run particle wax_on ^ ^ ^0.4 0 0 0 0 1 force
$execute as @a[limit=1,sort=nearest] if entity @s[tag=!challenge_mode,tag=!light_mode] as b739ddc5-14d2-45f3-b58f-8397a6b3a50d at @s positioned ~ ~$(4) ~ run particle wax_on ^ ^ ^-0.4 0 0 0 0 1 force

$execute as @a[limit=1,sort=nearest] if entity @s[tag=challenge_mode] as b739ddc5-14d2-45f3-b58f-8397a6b3a50d at @s positioned ~ ~$(2) ~ run particle soul_fire_flame ^ ^ ^0.4 0 0 0 0 1 force
$execute as @a[limit=1,sort=nearest] if entity @s[tag=challenge_mode] as b739ddc5-14d2-45f3-b58f-8397a6b3a50d at @s positioned ~ ~$(4) ~ run particle soul_fire_flame ^ ^ ^-0.4 0 0 0 0 1 force

$execute as @a[limit=1,sort=nearest] if entity @s[tag=light_mode] as b739ddc5-14d2-45f3-b58f-8397a6b3a50d at @s positioned ~ ~$(2) ~ run particle scrape ^ ^ ^0.4 0 0 0 0 1 force
$execute as @a[limit=1,sort=nearest] if entity @s[tag=light_mode] as b739ddc5-14d2-45f3-b58f-8397a6b3a50d at @s positioned ~ ~$(4) ~ run particle scrape ^ ^ ^-0.4 0 0 0 0 1 force