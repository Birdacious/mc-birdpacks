# as @e[tag=timestopeffector, tag=detectground] at @s --> as @e[tag=!datastored, distance=..5]


# rotation
function bird:gadgets/booms/time/timestop/effector/effects/store/rotation

# pos and rotation are stored in armor_stand ("timestopper") that entity will be continually teleported to, initialized here:
function bird:gadgets/booms/time/timestop/effector/effects/store/initializetimestopper

# motion
function bird:gadgets/booms/time/timestop/effector/effects/store/motion

# fuse
function bird:gadgets/booms/time/timestop/effector/effects/store/fuse

# potion effects

# AI
data merge entity @s {NoAI:1b}


# TAG
tag @s add datastored