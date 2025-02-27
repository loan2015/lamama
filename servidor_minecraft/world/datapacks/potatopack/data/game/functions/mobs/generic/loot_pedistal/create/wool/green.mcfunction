#Makes a loot pedistal


execute align xyz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {width:1f,height:1f,Tags:["loot_pedistal"],Passengers:[{id:"minecraft:item_display",view_range:0.5f,width:1f,height:1f,interpolation_duration:5,teleport_duration:5,item_display:"head",Tags:["loot_pedistal"],Passengers:[{id:"minecraft:marker",Tags:["loot_pedistal","detect_player"],data:{DeathLootTable:"game:wool/green"}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stone",Count:1b}}]}