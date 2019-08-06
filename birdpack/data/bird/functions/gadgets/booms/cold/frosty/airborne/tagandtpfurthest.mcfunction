# as @e[nbt={Item:{tag:{boom:"frosty"}}}] at @s if 
# i.e. as the snowball if the snowball's and effector's boomid are the same

# TAG
# effector continuously sets detectground tag on itself in airbornemain, but the code below remove it (until the snowball is destroyed)
#     when the tag finally stays on, you know you've hit something
tag @e[tag=frostyeffector, distance=..2, sort=furthest, limit=1] remove detectground

# TELEPORT
# snowball continuously teleports its effector to itself through the air
teleport @e[tag=frostyeffector, distance=..2, sort=furthest, limit=1] ~ ~ ~