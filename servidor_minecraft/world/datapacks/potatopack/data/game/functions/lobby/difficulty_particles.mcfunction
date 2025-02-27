#Particles for difficulty
tp @s ~ ~ ~ ~9 ~

$execute as @a[limit=1,sort=nearest] if entity @s[tag=!challenge_mode,tag=!light_mode] as a2f7e5f7-d403-4835-95a4-305ce13e19e2 at @s positioned ~ ~$(1) ~ run particle wax_off ^ ^ ^0.4 0 0 0 0 1 force
$execute as @a[limit=1,sort=nearest] if entity @s[tag=!challenge_mode,tag=!light_mode] as a2f7e5f7-d403-4835-95a4-305ce13e19e2 at @s positioned ~ ~$(3) ~ run particle wax_off ^ ^ ^-0.4 0 0 0 0 1 force

$execute as @a[limit=1,sort=nearest] if entity @s[tag=challenge_mode] as a2f7e5f7-d403-4835-95a4-305ce13e19e2 at @s positioned ~ ~$(1) ~ run particle flame ^ ^ ^0.4 0 0 0 0 1 force
$execute as @a[limit=1,sort=nearest] if entity @s[tag=challenge_mode] as a2f7e5f7-d403-4835-95a4-305ce13e19e2 at @s positioned ~ ~$(3) ~ run particle flame ^ ^ ^-0.4 0 0 0 0 1 force

$execute as @a[limit=1,sort=nearest] if entity @s[tag=light_mode] as a2f7e5f7-d403-4835-95a4-305ce13e19e2 at @s positioned ~ ~$(1) ~ run particle scrape ^ ^ ^0.4 0 0 0 0 1 force
$execute as @a[limit=1,sort=nearest] if entity @s[tag=light_mode] as a2f7e5f7-d403-4835-95a4-305ce13e19e2 at @s positioned ~ ~$(3) ~ run particle scrape ^ ^ ^-0.4 0 0 0 0 1 force