# as @e[tag=timestopeffector, tag=detectground] at @s --> as @e[tag=!datastored, distance=..5]

execute store result score @s motionX0 run data get entity @s Motion[0] 10000
execute store result score @s motionY0 run data get entity @s Motion[1] 10000
execute store result score @s motionZ0 run data get entity @s Motion[2] 10000