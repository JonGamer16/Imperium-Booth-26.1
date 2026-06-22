# Booth click handler — runs as a freshly-clicked stand interaction (@s), positioned at it.
#
# Resolves the click to the EXACT clicker via the UUID stored in interaction.player
# (interaction entities expose the clicker only in NBT — there is no `execute on` relation
# for it). This fixes the old "re-kit the nearest player instead of the clicker" bug.
# No location gate: stands give kits wherever they're placed.

# Capture the clicking player's UUID as four ints so we can match it against live players.
execute store result score #click0 im_booth_uuid run data get entity @s interaction.player[0]
execute store result score #click1 im_booth_uuid run data get entity @s interaction.player[1]
execute store result score #click2 im_booth_uuid run data get entity @s interaction.player[2]
execute store result score #click3 im_booth_uuid run data get entity @s interaction.player[3]

# Consume the click so a single right-click only fires once.
data remove entity @s interaction

# Tag the exact clicker (UUID match; distance is just a cheap pre-filter).
execute as @a[distance=..16] run function imperium:booth/match_clicker

# Route to the clicker's kit. @s is still the interaction for the kit-tag check, then
# rebinds to the clicking player.   sneak + click -> lore   |   plain click -> select
execute if entity @s[tag=im.booth_cliffshield] as @a[tag=im.booth_clicker,limit=1] at @s if predicate imperium:sneaking run function imperium:kits/cliffshield/booth/lore
execute if entity @s[tag=im.booth_cliffshield] as @a[tag=im.booth_clicker,limit=1] at @s unless predicate imperium:sneaking run function imperium:kits/cliffshield/booth/select
execute if entity @s[tag=im.booth_meowdy] as @a[tag=im.booth_clicker,limit=1] at @s if predicate imperium:sneaking run function imperium:kits/meowdy/booth/lore
execute if entity @s[tag=im.booth_meowdy] as @a[tag=im.booth_clicker,limit=1] at @s unless predicate imperium:sneaking run function imperium:kits/meowdy/booth/select
execute if entity @s[tag=im.booth_livvy] as @a[tag=im.booth_clicker,limit=1] at @s if predicate imperium:sneaking run function imperium:kits/livvy/booth/lore
execute if entity @s[tag=im.booth_livvy] as @a[tag=im.booth_clicker,limit=1] at @s unless predicate imperium:sneaking run function imperium:kits/livvy/booth/select
execute if entity @s[tag=im.booth_mummy] as @a[tag=im.booth_clicker,limit=1] at @s if predicate imperium:sneaking run function imperium:kits/mummy/booth/lore
execute if entity @s[tag=im.booth_mummy] as @a[tag=im.booth_clicker,limit=1] at @s unless predicate imperium:sneaking run function imperium:kits/mummy/booth/select
execute if entity @s[tag=im.booth_levent] as @a[tag=im.booth_clicker,limit=1] at @s if predicate imperium:sneaking run function imperium:kits/levent/booth/lore
execute if entity @s[tag=im.booth_levent] as @a[tag=im.booth_clicker,limit=1] at @s unless predicate imperium:sneaking run function imperium:kits/levent/booth/select
execute if entity @s[tag=im.booth_rastus] as @a[tag=im.booth_clicker,limit=1] at @s if predicate imperium:sneaking run function imperium:kits/rastus/booth/lore
execute if entity @s[tag=im.booth_rastus] as @a[tag=im.booth_clicker,limit=1] at @s unless predicate imperium:sneaking run function imperium:kits/rastus/booth/select
execute if entity @s[tag=im.booth_smokey] as @a[tag=im.booth_clicker,limit=1] at @s if predicate imperium:sneaking run function imperium:kits/smokey/booth/lore
execute if entity @s[tag=im.booth_smokey] as @a[tag=im.booth_clicker,limit=1] at @s unless predicate imperium:sneaking run function imperium:kits/smokey/booth/select

# Clear the routing tag for the next click.
tag @a remove im.booth_clicker
