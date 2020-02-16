# as server


# When airborne
function bird:gadgets/booms/bee/bumbling/airborne/airbornemain

# When effector lands
execute as @e[type=area_effect_cloud, tag=bumblingeffector, tag=detectground] at @s run function bird:gadgets/booms/bee/bumbling/effector/effectormain