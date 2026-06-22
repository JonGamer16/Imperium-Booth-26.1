# Per-tick upkeep for Livvy's Venom (im.venom). Counts down each target's timer and drops the
# tag at 0, then deals no-impact imperium:venom damage on the #VenomInterval clock.
# imperium:venom is in #no_impact (no flinch) and #bypasses_cooldown (ticks land through i-frames).
# >> TUNING: #VenomDuration / #VenomInterval live in main/ability_parameters. Damage-per-hit
#    stays a literal below (the /damage command can't read a score). <<
execute as @a[tag=im.venom] run scoreboard players remove @s im_venomTimer 1
execute as @a[tag=im.venom,scores={im_venomTimer=..0}] run tag @s remove im.venom

scoreboard players add #venomClock im_venomTimer 1
execute if score #venomClock im_venomTimer >= #VenomInterval im.param as @a[tag=im.venom] run damage @s 1.0 imperium:venom
execute if score #venomClock im_venomTimer >= #VenomInterval im.param run scoreboard players set #venomClock im_venomTimer 0
