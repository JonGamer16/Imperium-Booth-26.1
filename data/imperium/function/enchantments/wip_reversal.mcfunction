# # 1. Immediately revoke the advancement so it can trigger again
# advancement revoke @s only imperium:reversal_block

# # 2. Terminate the function if the player is not holding the Reversal shield
# execute unless items entity @s weapon.mainhand *[custom_data~{reversal_ench:1b}] unless items entity @s weapon.offhand *[custom_data~{reversal_ench:1b}] run return fail

# # 3. Teleportation execution
# # Tag the player to isolate them during the context switch
# tag @s add reversal_target

# # Shift context to the attacker. Move to their location, flatten pitch to 0 (preventing vertical clipping), move 1.5 blocks backwards, and teleport the tagged player there. 
# execute on attacker at @s rotated ~ 0 positioned ^ ^ ^-1.5 run tp @a[tag=reversal_target,limit=1] ~ ~ ~ facing entity @s feet

# # Clean up the tag
# tag @s remove reversal_target

# # 4. Apply the custom durability penalty to the correct hand
# execute if items entity @s weapon.mainhand *[custom_data~{reversal_ench:1b}] run item modify entity @s weapon.mainhand imperium:consume_10_durability
# execute if items entity @s weapon.offhand *[custom_data~{reversal_ench:1b}] run item modify entity @s weapon.offhand imperium:consume_10_durability