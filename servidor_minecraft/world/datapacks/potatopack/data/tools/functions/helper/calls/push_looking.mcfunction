#Pushes the entity in the direction it is looking

#make marker
forceload add 20 20 -10 -10
summon marker ~ ~ ~ {UUID:[I;-247325762,1375816113,-1974990415,-1875787867]}
tp f1421bbe-5201-49b1-8a48-09b19031bfa5 ~ ~ ~ ~ ~
tp f1421bbe-5201-49b1-8a48-09b19031bfa5 0.0 0.0 0.0
$execute as f1421bbe-5201-49b1-8a48-09b19031bfa5 at @s run tp @s ^ ^ ^$(scaler)

#data
data modify storage link:motion motion.Motion set value [0.0d,0.0d,0.0d]
data modify storage link:motion motion.Motion[0] set from entity f1421bbe-5201-49b1-8a48-09b19031bfa5 Pos[0]
data modify storage link:motion motion.Motion[1] set from entity f1421bbe-5201-49b1-8a48-09b19031bfa5 Pos[1]
data modify storage link:motion motion.Motion[2] set from entity f1421bbe-5201-49b1-8a48-09b19031bfa5 Pos[2]

data modify entity @s Motion set from storage link:motion motion.Motion

#kill marker
kill f1421bbe-5201-49b1-8a48-09b19031bfa5