# as server --> <bowUse = 1 OR you switched slots>

# Removes associated tags
tag @s remove laserSight1
tag @s remove laserSight2
scoreboard players reset @s laserTimer

# Replaces the bow back to a carrotstick
function bird:gadgets/item_mods/bow/laser_sight/item_replacement/bow_to_carrotstick

# Laser AEC entities used for curvetracing do not need to be killed because they only have a duration of 1t anyway