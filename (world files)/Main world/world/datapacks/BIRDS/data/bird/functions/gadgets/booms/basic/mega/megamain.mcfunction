# as server


# When airborne
function bird:gadgets/booms/basic/mega/airborne/airbornemain

# When effector lands
execute as @e[tag=megaeffector, tag=detectground] at @s run function bird:gadgets/booms/basic/mega/effector/effectormain