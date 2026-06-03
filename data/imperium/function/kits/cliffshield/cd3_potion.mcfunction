clear @s potion[custom_data={imperium_kit:1b}]

execute \
    if items entity @s hotbar.2 * \
    run loot give @s loot imperium:cliffshield/potion

execute \
    if items entity @s hotbar.2 air \
    run loot replace entity @s hotbar.2 loot imperium:cliffshield/potion

scoreboard players operation @s im_abilityCdC = #Cliffshield im_abilityCdC