# as @e[type=snowball, nbt={Item:{tag:{boom:"frigid"}}}] at @s

# particles as it flies
function bird:gadgets/booms/cold/frigid/airborne/particles

# effector initialization
function bird:gadgets/booms/cold/frigid/airborne/effectorinitialization

# TAGGING AND TELEPORTING
# Sets boomid
execute if entity @s[tag=!boomidset] run function bird:gadgets/booms/cold/frigid/airborne/setboomid

# these "execute if"s make sure that the boomid of the snowball and effector are the same
# combats problem of throwing two (or or) booms in succession and having the second one blow up in your face (because it got "distracted" from following its snowball by the first snowball)
#     still not perfect but probs good enough.
execute if score @s boomid = @e[tag=frigideffector, sort=nearest, limit=1] boomid run function bird:gadgets/booms/cold/frigid/airborne/tagandtpnearest
execute if score @s boomid = @e[tag=frigideffector, distance=..2, sort=furthest, limit=1] boomid run function bird:gadgets/booms/cold/frigid/airborne/tagandtpfurthest