# as @e[tag=timestopeffector, tag=detectground] at @s if score @s boomtimer matches 400 --> as @e[tag=datastored, distance=..5.5]

# Store fuse
execute store result score @s fuse run data get entity @s Fuse 1

# set fuse to never expire until timestop is done
data merge entity @s {Fuse:10000s}