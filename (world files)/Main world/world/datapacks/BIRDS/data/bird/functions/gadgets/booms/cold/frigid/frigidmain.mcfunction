# as server


# When airborne
function bird:gadgets/booms/cold/frigid/airborne/airbornemain

# When effector lands
execute as @e[type=area_effect_cloud, tag=frigideffector, tag=detectground] at @s run function bird:gadgets/booms/cold/frigid/effector/effectormain