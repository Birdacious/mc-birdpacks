# as @e[tag=timestopeffector, tag=detectground] at @s


# TIMER
scoreboard players add @s boomtimer 1


# PARTICLES
# initial particles
execute if score @s boomtimer matches ..1 run function bird:gadgets/booms/time/timestop/effector/particles/initialparticles

# continuous particles
function bird:gadgets/booms/time/timestop/effector/particles/continuousparticles

# radius particles
execute if score @s boomtimer matches ..350 run function bird:gadgets/booms/time/timestop/effector/particles/radius


# EFFECTS
# Store data once upon entering radius
execute as @e[tag=!datastored, distance=..5, tag=!timestopradius, tag=!timestopeffector, tag=!timestopper] at @s run function bird:gadgets/booms/time/timestop/effector/effects/store/storemain

# Potion Effects for player (so is invincible, but can't do anything)
execute as @a[tag=datastored] run function bird:gadgets/booms/time/timestop/effector/effects/playerpotioneffects

# If HurtTimer > 1, tag them so you know, and continuously give resistance 5 and fire resist until time runs out

# Make items un-pickup-able

# Teleport to timestopper continuously to stay frozen in place
execute as @e[tag=datastored, distance=..5.5] at @s run function bird:gadgets/booms/time/timestop/effector/effects/store/stop

# Return stored values when time is up (can't be run as effector because what if two timebooms overlap?)
#     Explanation: when it's time is up, effector makes timestopped entities in radius make sure there is no overlapping effector whose time is not up. If it really is the only effector, return stuff.
execute if score @s boomtimer matches 400 as @e[tag=datastored, distance=..5.5] at @s if score @e[type=area_effect_cloud, tag=timestopeffector, distance=..5.5, sort=nearest, limit=1] boomtimer matches 400 unless score @e[type=area_effect_cloud, tag=timestopeffector, distance=..5.5, sort=furthest, limit=1] boomtimer matches ..399 run function bird:gadgets/booms/time/timestop/effector/effects/return/returnmain


# TERMINATION
function bird:gadgets/booms/time/timestop/effector/effectortermination