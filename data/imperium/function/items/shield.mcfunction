clear @s shield[\
        !unbreakable] 1

#   If there is something in offhand just give it
execute \
    if entity @s[nbt={Inventory:[{Slot:-106b}]}] \
    run give @s \
    shield[\
        max_damage=30,\
        base_color="black",\
        banner_patterns=[\
            {pattern:"gradient",color:"white"},\
            {pattern:"gradient_up",color:"light_gray"},\
            {pattern:"straight_cross",color:"gray"},\
            {pattern:"border",color:"gray"},\
            {pattern:"rhombus",color:"gray"}\
        ],\
        blocks_attacks={\
            item_damage:{base:1,factor:1,threshold:8},\
            damage_reductions:[\
                {type:"generic",base:1,factor:1,horizontal_blocking_angle:60}\
            ],\
            block_delay_seconds:0.35\
        }\
    ] 1

#   This comes 2nd to avoid giving 2 shields because otherwise
#   the above command sees the shield and gives another
execute \
    unless entity @s[nbt={Inventory:[{Slot:-106b}]}] \
    run item replace entity @s weapon.offhand with \
    shield[\
        max_damage=30,\
        base_color="black",\
        banner_patterns=[\
            {pattern:"gradient",color:"white"},\
            {pattern:"gradient_up",color:"light_gray"},\
            {pattern:"straight_cross",color:"gray"},\
            {pattern:"border",color:"gray"},\
            {pattern:"rhombus",color:"gray"}\
        ],\
        blocks_attacks={\
            item_damage:{base:1,factor:1,threshold:8},\
            damage_reductions:[\
                {type:"generic",base:1,factor:1,horizontal_blocking_angle:60}\
            ],\
            block_delay_seconds:0.35\
        }\
    ] 1

scoreboard players remove @s itemreload 300