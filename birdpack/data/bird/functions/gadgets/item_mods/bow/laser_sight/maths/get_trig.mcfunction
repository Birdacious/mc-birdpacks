#Get player's yaw (θ), and put it in the Phi jukebox so Phi can do its thing.
#   Then get the sin and cos for yaw.
#       Then store them in the proper scoreboard objective (sin.theta, sin.phi, cos.theta, cos.phi)
data modify block -30000000 0 1600 RecordItem.tag.phi.mathfunc.angle set from entity @s Rotation[0]
function phi.mathfunc:sin_cos_score
scoreboard players operation @s sin.theta = $phi.mathfunc.sin phitemp
scoreboard players operation @s cos.theta = $phi.mathfunc.cos phitemp

# And do the same for pitch (ф)
data modify block -30000000 0 1600 RecordItem.tag.phi.mathfunc.angle set from entity @s Rotation[1]
function phi.mathfunc:sin_cos_score
scoreboard players operation @s sin.phi = $phi.mathfunc.sin phitemp
scoreboard players operation @s cos.phi = $phi.mathfunc.cos phitemp