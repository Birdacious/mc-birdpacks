# as @e[tag=timestopeffector, tag=detectground] at @s --> as @e[tag=datastored, distance=..5.5] at @s

# this reduces visual glitchyness, prevents multiple entities sharing the same timestopper, and prevents projectiles from gathering vertical momentum
data merge entity @s {Motion:[0.0,0.0,0.0]}

# teleport to timestopper (distance must be big because can't edit player motion)
teleport @e[type=armor_stand, tag=timestopper, distance=..4, sort=nearest, limit=1]
