#kills nearest marker
say killing nearest marker

execute as @e[distance=..16,type=marker,tag=amethyst,limit=1,sort=nearest] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace light

kill @e[distance=..16,type=marker,tag=amethyst,limit=1,sort=nearest]