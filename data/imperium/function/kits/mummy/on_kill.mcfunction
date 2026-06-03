clear @s end_crystal
give @s end_crystal[\
    !can_place_on,\
    custom_name="Energy Crystal",\
    max_stack_size=1,\
    food={nutrition:0,saturation:0,can_always_eat:true},\
    consumable={\
        consume_seconds:0,\
        on_consume_effects:[{type:"apply_effects",effects:[\
            {id:"instant_health",amplifier:1,duration:1},\
            {id:"regeneration",amplifier:4,duration:2}]}]},\
    use_remainder={"id":"bowl",count:1},\
    custom_data={"imperium_healing":1b}] 10