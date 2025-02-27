#> delta:internal/summon/summon_creepers_recursive
#   Recursively spawns creepers
#
# Callers:
#   > delta:internal/summon_creepers
#
# Inputs:
#   score $creepers_remaining delta.internal.math       <<< Number of creepers to spawn
#
# Output:
#   spawns creepers

summon creeper ~ ~1000 ~ {Tags:["delta.launcher","delta.init"],Silent:1b,Invulnerable:1b,ExplosionRadius:-1b,Fuse:0s,PersistenceRequired:1b}
execute positioned ~ ~1000 ~ run team join delta.no_collide @e[distance=..1,type=creeper,tag=delta.init]
scoreboard players remove $creepers_remaining delta.internal.math 1
execute if score $creepers_remaining delta.internal.math matches 1.. run function delta:internal/summon/summon_creepers_recursive