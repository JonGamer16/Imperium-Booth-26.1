clear @s chorus_fruit
give @s chorus_fruit[\
    max_stack_size=1,\
    food={nutrition:0,saturation:0,can_always_eat:true},\
    consumable={\
        consume_seconds:0,\
        on_consume_effects:[\
            {type:"apply_effects",effects:[\
                {id:"instant_health",amplifier:1,duration:1}]},\
            {type:"teleport_randomly",diameter:16}]}] 16
