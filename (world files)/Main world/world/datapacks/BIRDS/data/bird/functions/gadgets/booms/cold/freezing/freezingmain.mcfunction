# as server


# When airborne
function bird:gadgets/booms/cold/freezing/airborne/airbornemain

# When effector lands
execute as @e[type=area_effect_cloud, tag=freezingeffector, tag=detectground] at @s run function bird:gadgets/booms/cold/freezing/effector/effectormain