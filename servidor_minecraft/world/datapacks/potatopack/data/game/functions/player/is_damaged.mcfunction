#advancement

execute store result score maxhealth temp run attribute @s generic.max_health get 1000
execute store result score health temp run data get entity @s Health 100000
scoreboard players operation percent temp = health temp
scoreboard players operation percent temp /= maxhealth temp


execute if score percent temp matches ..100 run title @s actionbar [{"text":" ","color":"#66F801"},{"score":{"name":"percent","objective":"temp"},"font":"minecraft:hp","italic":false},{"text":"%","font":"minecraft:hp"},{"text":"                                                   ","color":"#FF0000"}]
execute if score percent temp matches ..90 run title @s actionbar [{"text":" ","color":"#95F502"},{"score":{"name":"percent","objective":"temp"},"font":"minecraft:hp","italic":false},{"text":"%","font":"minecraft:hp"},{"text":"                                                   ","color":"#FF0000"}]
execute if score percent temp matches ..80 run title @s actionbar [{"text":" ","color":"#CCF502"},{"score":{"name":"percent","objective":"temp"},"font":"minecraft:hp","italic":false},{"text":"%","font":"minecraft:hp"},{"text":"                                                   ","color":"#FF0000"}]
execute if score percent temp matches ..70 run title @s actionbar [{"text":" ","color":"#F2F502"},{"score":{"name":"percent","objective":"temp"},"font":"minecraft:hp","italic":false},{"text":"%","font":"minecraft:hp"},{"text":"                                                   ","color":"#FF0000"}]
execute if score percent temp matches ..60 run title @s actionbar [{"text":" ","color":"#FFD800"},{"score":{"name":"percent","objective":"temp"},"font":"minecraft:hp","italic":false},{"text":"%","font":"minecraft:hp"},{"text":"                                                   ","color":"#FF0000"}]
execute if score percent temp matches ..50 run title @s actionbar [{"text":" ","color":"#FF8700"},{"score":{"name":"percent","objective":"temp"},"font":"minecraft:hp","italic":false},{"text":"%","font":"minecraft:hp"},{"text":"                                                   ","color":"#FF0000"}]
execute if score percent temp matches ..40 run title @s actionbar [{"text":" ","color":"#FF4600"},{"score":{"name":"percent","objective":"temp"},"font":"minecraft:hp","italic":false},{"text":"%","font":"minecraft:hp"},{"text":"                                                   ","color":"#FF0000"}]
execute if score percent temp matches ..30 run title @s actionbar [{"text":" ","color":"#FF0000"},{"score":{"name":"percent","objective":"temp"},"font":"minecraft:hp","italic":false},{"text":"%","font":"minecraft:hp"},{"text":"                                                   ","color":"#FF0000"}]
execute if score percent temp matches ..20 run title @s actionbar [{"text":" ","color":"#E70000"},{"score":{"name":"percent","objective":"temp"},"font":"minecraft:hp","italic":false},{"text":"%","font":"minecraft:hp"},{"text":"                                                   ","color":"#FF0000"}]
execute if score percent temp matches ..10 run title @s actionbar [{"text":" ","color":"#D30000"},{"score":{"name":"percent","objective":"temp"},"font":"minecraft:hp","italic":false},{"text":"%","font":"minecraft:hp"},{"text":"                                                   ","color":"#FF0000"}]

#advancement
advancement revoke @s only game:is_damaged
