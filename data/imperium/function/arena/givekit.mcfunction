execute as @s[scores={givekit=1..}] run attribute @s knockback_resistance base set 0.44
execute as @s[scores={givekit=1..}] run attribute @s attack_knockback base set 1

execute as @s[scores={givekit=1}] run function imperium:kits/cliffshield
execute as @s[scores={givekit=2}] run function imperium:kits/meowdy
execute as @s[scores={givekit=3}] run function imperium:kits/livvy
execute as @s[scores={givekit=4}] run function imperium:kits/mummy
execute as @s[scores={givekit=5}] run function imperium:kits/levent
execute as @s[scores={givekit=6}] run function imperium:kits/rastus
execute as @s[scores={givekit=7}] run function imperium:kits/smokey

scoreboard players operation @s im_lastKit = @s givekit
execute as @s[scores={givekit=1..}] run scoreboard players reset @s givekit

# givekit score of 0 is reserved for giving the last kit the player used.
# if player has a stored lastKit greater than 0, set givekit equal to lastKit and rerun.
# it shouldn't run again because lastKit and givekit are now equal and therefore false.
# 0 should be different from having a null reset score. if it's bugged, make it use 1000.
execute as @s[scores={givekit=0}] \
  if score @s im_lastKit > @s givekit \
  run function imperium:arena/lastkit
