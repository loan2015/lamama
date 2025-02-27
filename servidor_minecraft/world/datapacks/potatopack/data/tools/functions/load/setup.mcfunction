
#Setup all necessary helper scoreboards
scoreboard objectives add adri_nv minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add adri_nv2 dummy
scoreboard objectives add admin dummy
scoreboard players add _link_2012_ admin 1
scoreboard objectives add lds dummy
scoreboard objectives add n dummy
scoreboard objectives add math dummy
scoreboard objectives add game dummy
scoreboard players add gamestate game 0
scoreboard objectives add health health {"text":"♥","color":"red","italic":false}
execute as @a[gamemode=!creative,gamemode=!spectator] run scoreboard objectives remove sidebar
scoreboard objectives add sidebar dummy [{"text":"7","font":"loading","color":"aqua","italic":false},{"translate":"intro.2","font":"default","color":"aqua","italic":false},{"text":"7","font":"loading","color":"aqua"}]
#execute as @a[gamemode=!creative,gamemode=!spectator] run scoreboard objectives setdisplay sidebar sidebar
scoreboard objectives add deaths deathCount {"translate":"scoreboard.deaths","color":"white"}
scoreboard objectives add temp dummy
scoreboard objectives add music dummy
scoreboard objectives add area dummy
scoreboard objectives add sincedeath minecraft.custom:minecraft.time_since_death
scoreboard objectives add animation dummy
scoreboard objectives add secondsplayed dummy
scoreboard objectives add hoursplayed dummy
scoreboard objectives add charm dummy
scoreboard objectives add charm2 dummy
scoreboard objectives add charmkb dummy
scoreboard objectives add walksound dummy
scoreboard objectives add bowshot minecraft.used:minecraft.bow
scoreboard objectives add crossbowshot minecraft.used:minecraft.crossbow
scoreboard objectives add carrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add life dummy
scoreboard objectives add adventure dummy
scoreboard objectives add shield_cd dummy
scoreboard objectives add shield_cd_start dummy
scoreboard objectives add shield_i_frames dummy
scoreboard objectives add hookshot dummy
scoreboard objectives add leaf_range dummy
scoreboard objectives add laser_sound dummy
scoreboard objectives add pipe dummy
scoreboard objectives add pipe_vel dummy
scoreboard objectives add recent_push dummy
scoreboard objectives add lightcall dummy
scoreboard objectives add health_charge dummy
scoreboard objectives add health_kill totalKillCount
scoreboard objectives add health_spawner minecraft.mined:spawner
scoreboard objectives add health_time dummy
scoreboard objectives add wool dummy
scoreboard objectives add bat_kill minecraft.killed:bat
scoreboard objectives add place_red minecraft.used:red_stained_glass
scoreboard objectives add place_orange minecraft.used:orange_stained_glass
scoreboard objectives add place_yellow minecraft.used:yellow_stained_glass
scoreboard objectives add place_green minecraft.used:green_stained_glass
scoreboard objectives add place_blue minecraft.used:blue_stained_glass
scoreboard objectives add place_purple minecraft.used:purple_stained_glass
scoreboard objectives add link.stunned_animation dummy
scoreboard objectives add link.stunned dummy
scoreboard objectives add link.charmed dummy
scoreboard objectives add link.charmed.search dummy
scoreboard objectives add balls minecraft.used:snowball
scoreboard objectives add healthcounter dummy
scoreboard objectives add healthd dummy
scoreboard objectives add healthlastpercent dummy
scoreboard objectives add shield_block_cd_check minecraft.custom:damage_blocked_by_shield
scoreboard objectives add land_softly dummy
scoreboard objectives add mowse_a5 dummy
scoreboard objectives add music_queue dummy
scoreboard objectives add mowse_a5 dummy
scoreboard objectives add difficulty trigger
scoreboard objectives add campfire trigger
scoreboard objectives add teleport_to_teammate trigger
scoreboard objectives add charmed_cooldown dummy
scoreboard objectives add spawner_mine_time dummy
scoreboard objectives add spawner_mining_time dummy

#Force spawner tweaker to load
scoreboard players set setup spawner_tweaker 0

#forceloads
forceload add 3 -28

#set any needed scores
scoreboard players reset dummyhp
scoreboard players add @a area 0
scoreboard players add knockback lds 0
scoreboard players add scaletoarmor lds 0
scoreboard players add iframes lds 0
scoreboard players add max_damage game 0
scoreboard players set rotation mowse_a5 0

#hp setup
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list deaths
bossbar add hp1 {"text":"a","font":"minecraft:hp"}
bossbar set hp1 color white
bossbar add hp2 {"text":"c","font":"minecraft:hp"}
bossbar set hp2 color white
bossbar add hp3 {"text":"d","font":"minecraft:hp"}
bossbar set hp3 color white
bossbar add hp4 {"text":"e","font":"minecraft:hp"}
bossbar set hp4 color white
bossbar add hp5 {"text":"f","font":"minecraft:hp"}
bossbar set hp5 color white

bossbar set hp2 name {"text":"c","font":"minecraft:hp"}
bossbar set hp3 name {"text":"d","font":"minecraft:hp"}
bossbar set hp4 name {"text":"e","font":"minecraft:hp"}
bossbar set hp5 name {"text":"f","font":"minecraft:hp"}

#failsages
advancement revoke @a only game:eye

#teams
team add friendly
team modify friendly collisionRule never
team modify friendly friendlyFire false
team modify friendly seeFriendlyInvisibles true
team modify friendly color white
team add friendlyfire
team modify friendlyfire collisionRule never
team modify friendlyfire friendlyFire true
team modify friendlyfire seeFriendlyInvisibles true
team modify friendlyfire color red
team add friendly_player
team modify friendly_player collisionRule never
team modify friendly_player friendlyFire false
team modify friendly_player seeFriendlyInvisibles true
team modify friendly_player color white
team modify friendly_player suffix {"text":" ☠","color":"white","italic":false}
team modify friendly_player suffix {"text":"","color":"white","italic":false}

team add unkilled
team modify unkilled collisionRule never
team modify unkilled friendlyFire false
team modify unkilled seeFriendlyInvisibles true
team modify unkilled color white
team modify unkilled suffix {"text":" ⓘ","color":"white","italic":false}
team modify unkilled suffix {"text":"","color":"white","italic":false}

team add yellow
team add red
team add dark_red
team modify yellow color yellow
team modify red color red
team modify dark_red color dark_red
team add dark_purple
team modify dark_purple color dark_purple
team add gold
team modify gold color gold
team add gray
team modify gray color gray

#Rng stuffs
scoreboard players add in math 0
scoreboard players add in1 math 0
scoreboard players add out math 0

#gamerules
gamerule universalAnger true
gamerule doInsomnia false
gamerule commandBlockOutput false
gamerule spectatorsGenerateChunks true
gamerule doWardenSpawning false
gamerule doDaylightCycle false
gamerule doTraderSpawning false
gamerule keepInventory true
gamerule naturalRegeneration false
gamerule universalAnger true
gamerule mobGriefing false
gamerule commandModificationBlockLimit 150000
gamerule maxCommandChainLength 999999
gamerule showDeathMessages false

#rng setup
scoreboard objectives add constant dummy
scoreboard players set #lcg constant 1103515245

#Run loops
function tools:loop/tick/base
function tools:load/load_message

#looping
scoreboard objectives add gremloop dummy
scoreboard players add 5hz gremloop 0
scoreboard players add 10hz gremloop 0
scoreboard players add 1hz gremloop 0
scoreboard players add 10s gremloop 0
scoreboard players add 20s gremloop 0

#setup numbers
scoreboard objectives add numbers dummy
scoreboard players set -1000 numbers -1000
scoreboard players set -500 numbers -500
scoreboard players set -100 numbers -100
scoreboard players set -10 numbers -10
scoreboard players set -1 numbers -1
scoreboard players set 0 numbers 0
scoreboard players set 1 numbers 1
scoreboard players set 2 numbers 2
scoreboard players set 3 numbers 3
scoreboard players set 4 numbers 4
scoreboard players set 5 numbers 5
scoreboard players set 6 numbers 6
scoreboard players set 7 numbers 7
scoreboard players set 8 numbers 8
scoreboard players set 9 numbers 9
scoreboard players set 10 numbers 10
scoreboard players set 11 numbers 11
scoreboard players set 12 numbers 12
scoreboard players set 13 numbers 13
scoreboard players set 14 numbers 14
scoreboard players set 15 numbers 15
scoreboard players set 16 numbers 16
scoreboard players set 17 numbers 17
scoreboard players set 18 numbers 18
scoreboard players set 19 numbers 19
scoreboard players set 20 numbers 20
scoreboard players set 21 numbers 21
scoreboard players set 22 numbers 22
scoreboard players set 23 numbers 23
scoreboard players set 24 numbers 24
scoreboard players set 25 numbers 25
scoreboard players set 26 numbers 26
scoreboard players set 27 numbers 27
scoreboard players set 28 numbers 28
scoreboard players set 29 numbers 29
scoreboard players set 30 numbers 30
scoreboard players set 31 numbers 31
scoreboard players set 32 numbers 32
scoreboard players set 33 numbers 33
scoreboard players set 34 numbers 34
scoreboard players set 35 numbers 35
scoreboard players set 36 numbers 36
scoreboard players set 37 numbers 37
scoreboard players set 38 numbers 38
scoreboard players set 39 numbers 39
scoreboard players set 40 numbers 40
scoreboard players set 41 numbers 41
scoreboard players set 42 numbers 42
scoreboard players set 43 numbers 43
scoreboard players set 44 numbers 44
scoreboard players set 45 numbers 45
scoreboard players set 46 numbers 46
scoreboard players set 47 numbers 47
scoreboard players set 48 numbers 48
scoreboard players set 49 numbers 49
scoreboard players set 50 numbers 50
scoreboard players set 51 numbers 51
scoreboard players set 60 numbers 60
scoreboard players set 70 numbers 70
scoreboard players set 75 numbers 75
scoreboard players set 80 numbers 80
scoreboard players set 90 numbers 90
scoreboard players set 100 numbers 100
scoreboard players set 101 numbers 101
scoreboard players set 102 numbers 102
scoreboard players set 103 numbers 103
scoreboard players set 104 numbers 104
scoreboard players set 105 numbers 105
scoreboard players set 106 numbers 106
scoreboard players set 107 numbers 107
scoreboard players set 108 numbers 108
scoreboard players set 109 numbers 109
scoreboard players set 110 numbers 110
scoreboard players set 120 numbers 120
scoreboard players set 128 numbers 128
scoreboard players set 130 numbers 130
scoreboard players set 140 numbers 140
scoreboard players set 150 numbers 150
scoreboard players set 160 numbers 160
scoreboard players set 170 numbers 170
scoreboard players set 180 numbers 180
scoreboard players set 190 numbers 190
scoreboard players set 200 numbers 200
scoreboard players set 210 numbers 210
scoreboard players set 220 numbers 220
scoreboard players set 224 numbers 224
scoreboard players set 230 numbers 230
scoreboard players set 240 numbers 240
scoreboard players set 250 numbers 250
scoreboard players set 260 numbers 260
scoreboard players set 270 numbers 270
scoreboard players set 280 numbers 280
scoreboard players set 290 numbers 290
scoreboard players set 293 numbers 293
scoreboard players set 300 numbers 300
scoreboard players set 310 numbers 310
scoreboard players set 320 numbers 320
scoreboard players set 324 numbers 324
scoreboard players set 328 numbers 328
scoreboard players set 330 numbers 330
scoreboard players set 340 numbers 340
scoreboard players set 350 numbers 350
scoreboard players set 360 numbers 360
scoreboard players set 370 numbers 370
scoreboard players set 380 numbers 380
scoreboard players set 390 numbers 390
scoreboard players set 400 numbers 400
scoreboard players set 410 numbers 410
scoreboard players set 420 numbers 420
scoreboard players set 430 numbers 430
scoreboard players set 440 numbers 440
scoreboard players set 450 numbers 450
scoreboard players set 460 numbers 460
scoreboard players set 470 numbers 470
scoreboard players set 480 numbers 480
scoreboard players set 490 numbers 490
scoreboard players set 500 numbers 500
scoreboard players set 600 numbers 600
scoreboard players set 700 numbers 700
scoreboard players set 800 numbers 800
scoreboard players set 900 numbers 900
scoreboard players set 1000 numbers 1000
scoreboard players set 1100 numbers 1100
scoreboard players set 1200 numbers 1200
scoreboard players set 1300 numbers 1300
scoreboard players set 1400 numbers 1400
scoreboard players set 1500 numbers 1500
scoreboard players set 1600 numbers 1600
scoreboard players set 1700 numbers 1700
scoreboard players set 1800 numbers 1800
scoreboard players set 1900 numbers 1900
scoreboard players set 2000 numbers 2000
scoreboard players set 2100 numbers 2100
scoreboard players set 2200 numbers 2200
scoreboard players set 2300 numbers 2300
scoreboard players set 2400 numbers 2400
scoreboard players set 245300 numbers 245300
scoreboard players set 2500 numbers 2500
scoreboard players set 2600 numbers 2600
scoreboard players set 2700 numbers 2700
scoreboard players set 2800 numbers 2800
scoreboard players set 2900 numbers 2900
scoreboard players set 3000 numbers 3000
scoreboard players set 3100 numbers 3100
scoreboard players set 3200 numbers 3200
scoreboard players set 3300 numbers 3300
scoreboard players set 3400 numbers 3400
scoreboard players set 3500 numbers 3500
scoreboard players set 3600 numbers 3600
scoreboard players set 3700 numbers 3700
scoreboard players set 3800 numbers 3800
scoreboard players set 3900 numbers 3900
scoreboard players set 4000 numbers 4000
scoreboard players set 4100 numbers 4100
scoreboard players set 4200 numbers 4200
scoreboard players set 4300 numbers 4300
scoreboard players set 4400 numbers 4400
scoreboard players set 4500 numbers 4500
scoreboard players set 4600 numbers 4600
scoreboard players set 4700 numbers 4700
scoreboard players set 4800 numbers 4800
scoreboard players set 4900 numbers 4900
scoreboard players set 5000 numbers 5000
scoreboard players set 6000 numbers 6000
scoreboard players set 7000 numbers 7000
scoreboard players set 8000 numbers 8000
scoreboard players set 9000 numbers 9000
scoreboard players set 10000 numbers 10000
scoreboard players set 50000 numbers 50000
scoreboard players set 100000 numbers 100000
scoreboard players set 1000000 numbers 1000000
scoreboard players set 10000000 numbers 10000000
