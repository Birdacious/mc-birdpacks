# as @e[nbt={Item:{tag:{boom:"medium"}}}] at @s if entity @s[tag=!boomidset]


# A boom id is just a number based on how many booms of a certain type are currently on the field
# The id is stored in the "boomid" objective of the snowball and the nearest effector (which should be its own effector)
execute store result score @s boomid run execute if entity @e[tag=mediumeffector]
execute store result score @e[tag=mediumeffector, sort=nearest, limit=1] boomid run execute if entity @e[tag=mediumeffector]

# so it only gets set once
tag @s add boomidset


# P.S.
# Two booms could end up with the same id.
#     For example, throw one boom (becomes #0), then throw another (becomes #1).
#     Then when boom #0 lands but you throw another boom before boom #1 lands, it becomes another boom #1.
# But this isn't a problem, because by that time the booms both labelled #1 are far enough away from each other.
#     You would have to be trying really hard to get the two boom #1s' paths to intersect.