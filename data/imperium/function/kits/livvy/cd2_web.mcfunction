clear @s cobweb[custom_data={imperium_kit:1b}]

execute \
    if items entity @s hotbar.8 * \
    run loot give @s loot imperium:livvy/web

execute \
    if items entity @s hotbar.8 air \
    run loot replace entity @s hotbar.8 loot imperium:livvy/web

scoreboard players operation @s im_abilityCdB = #Livvy im_abilityCdB
