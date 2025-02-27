#Setup all necessary helper scoreboards

scoreboard objectives add healthcounter dummy
scoreboard objectives add healthd dummy
scoreboard objectives add healthdmax dummy
scoreboard objectives add healthdpercent dummy
scoreboard objectives add ouchie minecraft.custom:minecraft.damage_dealt
scoreboard objectives add numbers dummy
scoreboard players set 10 numbers 10
scoreboard players set 20 numbers 20
scoreboard players set 30 numbers 30
scoreboard players set 40 numbers 40
scoreboard players set 50 numbers 50
scoreboard players set 60 numbers 60
scoreboard players set 70 numbers 70
scoreboard players set 80 numbers 80
scoreboard players set 90 numbers 90
scoreboard players set 100 numbers 100
scoreboard players set 1000 numbers 1000


#Run loops
#function enchant:loop/tick/base
#function enchant:loop/6_second/base

#message
function health:load/load_message