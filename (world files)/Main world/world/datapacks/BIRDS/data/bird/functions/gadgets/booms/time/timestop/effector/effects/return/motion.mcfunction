# as @e[tag=timestopeffector, tag=detectground] at @s if score @s boomtimer matches 400 --> as @e[tag=datastored, distance=..5.5]

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s motionX0
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s motionY0
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s motionZ0