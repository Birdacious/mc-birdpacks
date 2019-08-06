# as @e[nbt={Item:{tag:{boom:"medium"}}}] at @s

# particles as it flies
function bird:gadgets/booms/basic/medium/airborne/particles

# effector initialization
function bird:gadgets/booms/basic/medium/airborne/effectorinitialization

# TAGGING AND TELEPORTING
# Sets boomid
execute if entity @s[tag=!boomidset] run function bird:gadgets/booms/basic/medium/airborne/setboomid

# these "execute if"s make sure that the boomid of the snowball and effector are the same
# combats problem of throwing two (or or) booms in succession and having the second one blow up in your face (because it got "distracted" from following its snowball by the first snowball)
#     still not perfect but probs good enough.
execute if score @s boomid = @e[tag=mediumeffector, sort=nearest, limit=1] boomid run function bird:gadgets/booms/basic/medium/airborne/tagandtpnearest
execute if score @s boomid = @e[tag=mediumeffector, distance=..2, sort=furthest, limit=1] boomid run function bird:gadgets/booms/basic/medium/airborne/tagandtpfurthest