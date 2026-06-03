clear @s shield[custom_data={imperium_kit:1b}]

#   If there is something in offhand just give it
execute \
    if items entity @s weapon.offhand * \
    run loot give @s loot imperium:cliffshield/shield

#   This comes 2nd to avoid giving 2 shields because otherwise
#   the above command sees the shield and gives another
execute \
    if items entity @s weapon.offhand air \
    run loot give @s loot imperium:cliffshield/shield

scoreboard players operation @s im_abilityCdA = #Cliffshield im_abilityCdA
