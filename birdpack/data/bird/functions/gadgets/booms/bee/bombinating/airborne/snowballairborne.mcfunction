# as @e[type=snowball, nbt={Item:{tag:{boom:"bombinating"}}}] at @s

# particles as it flies
function bird:gadgets/booms/bee/bombinating/airborne/particles

# effector initialization
function bird:gadgets/booms/bee/bombinating/airborne/effectorinitialization

# TAGGING AND TELEPORTING
# Sets boomid
execute if entity @s[tag=!boomidset] run function bird:gadgets/booms/bee/bombinating/airborne/setboomid

# these "execute if"s make sure that the boomid of the snowball and effector are the same
# combats problem of throwing two (or or) booms in succession and having the second one blow up in your face (because it got "distracted" from following its own snowball by the first snowball)
#     still not perfect but probs good enough.
execute if score @s boomid = @e[type=minecraft:area_effect_cloud, tag=bombinatingeffector, sort=nearest, limit=1] boomid run function bird:gadgets/booms/bee/bombinating/airborne/tagandtpnearest
execute if score @s boomid = @e[type=minecraft:area_effect_cloud, tag=bombinatingeffector, distance=..2, sort=furthest, limit=1] boomid run function bird:gadgets/booms/bee/bombinating/airborne/tagandtpfurthest