# as server


# When airborne
function bird:gadgets/booms/cold/frosty/airborne/airbornemain

# When effector lands
execute as @e[type=area_effect_cloud, tag=frostyeffector, tag=detectground] at @s run function bird:gadgets/booms/cold/frosty/effector/effectormain