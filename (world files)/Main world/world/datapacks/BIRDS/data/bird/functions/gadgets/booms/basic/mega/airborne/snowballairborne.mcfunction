# as @e[nbt={Item:{tag:{boom:"mega"}}}] at @s

# particles as it flies
function bird:gadgets/booms/basic/mega/airborne/particles

# effector initialization
function bird:gadgets/booms/basic/mega/airborne/effectorinitialization

# TAGGING AND TELEPORTING
# Sets boomid
execute if entity @s[tag=!boomidset] run function bird:gadgets/booms/basic/mega/airborne/setboomid

# these "execute if"s make sure that the boomid of the snowball and effector are the same
# combats problem of throwing two (or or) booms in succession and having the second one blow up in your face (because it got "distracted" from following its snowball by the first snowball)
#     still not perfect but probs good enough.
execute if score @s boomid = @e[tag=megaeffector, sort=nearest, limit=1] boomid run function bird:gadgets/booms/basic/mega/airborne/tagandtpnearest
execute if score @s boomid = @e[tag=megaeffector, distance=..2, sort=furthest, limit=1] boomid run function bird:gadgets/booms/basic/mega/airborne/tagandtpfurthest