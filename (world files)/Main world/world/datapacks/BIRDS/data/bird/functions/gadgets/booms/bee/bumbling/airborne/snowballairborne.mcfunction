# as @e[type=snowball, nbt={Item:{tag:{boom:"bumbling"}}}] at @s

# particles as it flies
function bird:gadgets/booms/bee/bumbling/airborne/particles

# effector initialization
function bird:gadgets/booms/bee/bumbling/airborne/effectorinitialization

# TAGGING AND TELEPORTING
# Sets boomid
execute if entity @s[tag=!boomidset] run function bird:gadgets/booms/bee/bumbling/airborne/setboomid

# these "execute if"s make sure that the boomid of the snowball and effector are the same
# combats problem of throwing two (or or) booms in succession and having the second one blow up in your face (because it got "distracted" from following its own snowball by the first snowball)
#     still not perfect but probs good enough.
execute if score @s boomid = @e[type=minecraft:area_effect_cloud, tag=bumblingeffector, sort=nearest, limit=1] boomid run function bird:gadgets/booms/bee/bumbling/airborne/tagandtpnearest
execute if score @s boomid = @e[type=minecraft:area_effect_cloud, tag=bumblingeffector, distance=..2, sort=furthest, limit=1] boomid run function bird:gadgets/booms/bee/bumbling/airborne/tagandtpfurthest