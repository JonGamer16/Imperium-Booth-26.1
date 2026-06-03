scoreboard players set @e[type=#imperium:human,scores={killFlag=1..,killDamage=200..}] onKill 1
scoreboard players set @e[type=#imperium:human,scores={killFlag=1..,killDamage=..199}] killFlag 0

function imperium:items/trident
function imperium:items/goldarmor

function imperium:healing_items/beetsoup
function imperium:healing_items/mushsoup
function imperium:healing_items/rabbitsoup
function imperium:healing_items/craftsoup
function imperium:healing_items/healthpot
function imperium:healing_items/gapple
function imperium:healing_items/regenpot
function imperium:healing_items/cake

# Per-kit healing refresh — runs after global calls above, so these always set the final quantity
execute as @e[type=#imperium:human,scores={onKill=1},tag=im.kit_cliffshield] run function imperium:kits/cliffshield/on_kill
execute as @e[type=#imperium:human,scores={onKill=1},tag=im.kit_meowdy] run function imperium:kits/meowdy/on_kill
execute as @e[type=#imperium:human,scores={onKill=1},tag=im.kit_livvy] run function imperium:kits/livvy/on_kill
execute as @e[type=#imperium:human,scores={onKill=1},tag=im.kit_mummy] run function imperium:kits/mummy/on_kill
execute as @e[type=#imperium:human,scores={onKill=1},tag=im.kit_levent] run function imperium:kits/levent/on_kill
execute as @e[type=#imperium:human,scores={onKill=1},tag=im.kit_rastus] run function imperium:kits/rastus/on_kill
execute as @e[type=#imperium:human,scores={onKill=1},tag=im.kit_smokey] run function imperium:kits/smokey/on_kill

scoreboard players set @e[type=#imperium:human,scores={onKill=1}] killDamage 0
scoreboard players set @e[type=#imperium:human,scores={onKill=1}] killFlag 0
scoreboard players set @e[type=#imperium:human,scores={onKill=1}] onKill 0
