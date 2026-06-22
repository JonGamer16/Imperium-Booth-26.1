# Booth kit-stand interaction handler — runs every tick from imperium:loop.
#
# Each kit display is an `interaction` entity tagged im.booth_stand + im.booth_<kit>,
# overlapping a Marker armor_stand that shows the kit's gear. A right-click records the
# clicker in the entity's `interaction` NBT. `execute on target` then runs as that exact
# player — the wiki-supported relation for the last right-clicker of an interaction entity
# (https://minecraft.wiki/w/Interaction). `if data entity @s interaction` gates on a fresh
# click; the final `data remove` consumes it so one right-click fires exactly once.
#   - sneak + click -> that kit's booth/lore (hidden fighter lore)
#   - plain click   -> that kit's booth/select (equip the kit + show abilities)

execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_cliffshield] if data entity @s interaction on target at @s if predicate imperium:sneaking run function imperium:kits/cliffshield/booth/lore
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_cliffshield] if data entity @s interaction on target at @s unless predicate imperium:sneaking run function imperium:kits/cliffshield/booth/select
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_meowdy] if data entity @s interaction on target at @s if predicate imperium:sneaking run function imperium:kits/meowdy/booth/lore
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_meowdy] if data entity @s interaction on target at @s unless predicate imperium:sneaking run function imperium:kits/meowdy/booth/select
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_livvy] if data entity @s interaction on target at @s if predicate imperium:sneaking run function imperium:kits/livvy/booth/lore
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_livvy] if data entity @s interaction on target at @s unless predicate imperium:sneaking run function imperium:kits/livvy/booth/select
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_mummy] if data entity @s interaction on target at @s if predicate imperium:sneaking run function imperium:kits/mummy/booth/lore
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_mummy] if data entity @s interaction on target at @s unless predicate imperium:sneaking run function imperium:kits/mummy/booth/select
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_levent] if data entity @s interaction on target at @s if predicate imperium:sneaking run function imperium:kits/levent/booth/lore
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_levent] if data entity @s interaction on target at @s unless predicate imperium:sneaking run function imperium:kits/levent/booth/select
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_rastus] if data entity @s interaction on target at @s if predicate imperium:sneaking run function imperium:kits/rastus/booth/lore
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_rastus] if data entity @s interaction on target at @s unless predicate imperium:sneaking run function imperium:kits/rastus/booth/select
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_smokey] if data entity @s interaction on target at @s if predicate imperium:sneaking run function imperium:kits/smokey/booth/lore
execute as @e[type=interaction,tag=im.booth_stand,tag=im.booth_smokey] if data entity @s interaction on target at @s unless predicate imperium:sneaking run function imperium:kits/smokey/booth/select

# Consume the click on every booth stand so a single right-click only fires once.
execute as @e[type=interaction,tag=im.booth_stand] run data remove entity @s interaction
