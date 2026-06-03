clear @s shield[custom_data={imperium_kit:1b}]

execute \
    if items entity @s hotbar.8 * \
    run loot give @s loot imperium:levent/shield

execute \
    if items entity @s hotbar.8 air \
    run loot replace entity @s hotbar.8 loot imperium:levent/shield

scoreboard players operation @s im_abilityCdB = #Levent im_abilityCdB
