# as @e[tag=timestopeffector, tag=detectground] at @s --> as @e[tag=!datastored, distance=..5]

# If the entity is not itself a timestopper, summon a timestopper armor_stand
execute if entity @s[tag=!timestopper] run summon armor_stand ~ ~ ~ {Tags:[timestopper], Marker:1b, Invisible:0b}
execute store result entity @e[tag=timestopper, distance=..1, sort=nearest, limit=1] Rotation[0] float 1 run scoreboard players get @s yaw
execute store result entity @e[tag=timestopper, distance=..1, sort=nearest, limit=1] Rotation[1] float 1 run scoreboard players get @s pitch