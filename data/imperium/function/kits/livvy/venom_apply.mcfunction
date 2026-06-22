# Runs as a player hit by Livvy's Venom Spray (Poison III, used only as the delivery signal).
# Convert it to the tracked im.venom tag with a 3s (60t) timer, then strip the vanilla poison
# so the damage is dealt as no-impact imperium:venom instead of global vanilla magic.
# Re-hits re-run this and refresh the timer. (The potion's Harming hit stays vanilla.)
tag @s add im.venom
scoreboard players operation @s im_venomTimer = #VenomDuration im.param
effect clear @s minecraft:poison
