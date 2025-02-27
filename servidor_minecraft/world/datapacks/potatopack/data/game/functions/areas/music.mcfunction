#controls the map music, executed on all players at 1hz
scoreboard players add @s music 1

#Area entered logics

#Music, play music when score reaches 1+, then set to negative based on how long the track is/length until next track

execute if score @s music matches 1.. if score @s music_queue matches 1 run function game:areas/a1/play_music
execute if score @s music matches 1.. if score @s music_queue matches 2 run function game:areas/a2/play_music
execute if score @s music matches 1.. if score @s music_queue matches 3 run function game:areas/a3/play_music
execute if score @s music matches 1.. if score @s music_queue matches 4 run function game:areas/a4/play_music
execute if score @s music matches 1.. if score @s music_queue matches 5 run function game:areas/a5/play_music
execute if score @s music matches 1.. if score @s music_queue matches 6 run function game:areas/a6/play_music
execute if score @s music matches 1.. if score @s music_queue matches -1 run function game:areas/monument/play_music


