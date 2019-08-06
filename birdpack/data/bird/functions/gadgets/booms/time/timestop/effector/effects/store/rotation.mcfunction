# as @e[tag=timestopeffector, tag=detectground] at @s --> as @e[tag=!datastored, distance=..5]

execute store result score @s yaw run data get entity @s Rotation[0] 1
execute store result score @s pitch run data get entity @s Rotation[1] 1
