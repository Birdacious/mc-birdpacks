# as server


# When airborne
function bird:gadgets/booms/basic/mini/airborne/airbornemain

# When effector lands
execute as @e[tag=minieffector, tag=detectground] at @s run function bird:gadgets/booms/basic/mini/effector/effectormain