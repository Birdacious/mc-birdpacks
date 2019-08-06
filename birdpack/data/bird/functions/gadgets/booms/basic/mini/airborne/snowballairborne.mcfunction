# as @e[nbt={Item:{tag:{boom:"mini"}}}] at @s

# particles as it flies
function bird:gadgets/booms/basic/mini/airborne/particles

# effector initialization
function bird:gadgets/booms/basic/mini/airborne/effectorinitialization

# TAGGING AND TELEPORTING
# Sets boomid
execute if entity @s[tag=!boomidset] run function bird:gadgets/booms/basic/mini/airborne/setboomid

# these "execute if"s make sure that the boomid of the snowball and effector are the same
# combats problem of throwing two (or or) booms in succession and having the second one blow up in your face (because it got "distracted" from following its snowball by the first snowball)
#     still not perfect but probs good enough.
execute if score @s boomid = @e[tag=minieffector, sort=nearest, limit=1] boomid run function bird:gadgets/booms/basic/mini/airborne/tagandtpnearest
execute if score @s boomid = @e[tag=minieffector, distance=..2, sort=furthest, limit=1] boomid run function bird:gadgets/booms/basic/mini/airborne/tagandtpfurthest