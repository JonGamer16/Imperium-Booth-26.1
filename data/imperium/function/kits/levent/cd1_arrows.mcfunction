clear @s arrow[custom_data={imperium_kit:1b}]

#   If there is something in offhand just give it
execute \
    if items entity @s weapon.offhand * \
    run loot give @s loot imperium:levent/arrows

#   This comes 2nd to avoid giving 2 shields because otherwise
#   the above command sees the shield and gives another
execute \
    if items entity @s weapon.offhand air \
    run loot give @s loot imperium:levent/arrows

scoreboard players operation @s im_abilityCdA = #Levent im_abilityCdA
