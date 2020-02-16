# as @e[type=snowball, nbt={Item:{tag:{boom:"frosty"}}}] at @s

# particles as it flies
function bird:gadgets/booms/cold/frosty/airborne/particles

# effector initialization
function bird:gadgets/booms/cold/frosty/airborne/effectorinitialization

# TAGGING AND TELEPORTING
# Sets boomid
execute if entity @s[tag=!boomidset] run function bird:gadgets/booms/cold/frosty/airborne/setboomid

# these "execute if"s make sure that the boomid of the snowball and effector are the same
# combats problem of throwing two (or or) booms in succession and having the second one blow up in your face (because it got "distracted" from following its snowball by the first snowball)
#     still not perfect but probs good enough.
execute if score @s boomid = @e[tag=frostyeffector, sort=nearest, limit=1] boomid run function bird:gadgets/booms/cold/frosty/airborne/tagandtpnearest
execute if score @s boomid = @e[tag=frostyeffector, distance=..2, sort=furthest, limit=1] boomid run function bird:gadgets/booms/cold/frosty/airborne/tagandtpfurthest