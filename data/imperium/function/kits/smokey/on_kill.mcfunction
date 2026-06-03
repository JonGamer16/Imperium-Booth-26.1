clear @s rabbit_stew[custom_data={imperium_healing:1b}]
clear @s bowl
give @s rabbit_stew\
    [\
        food={nutrition:0,saturation:0,can_always_eat:true},\
        consumable={\
            consume_seconds:0,\
            on_consume_effects:[{type:"apply_effects",effects:[\
                {id:"instant_health",amplifier:0,duration:3}]}]},\
            use_remainder={"id":"bowl",count:1},\
        custom_data={"imperium_healing":1b}\
    ] 10