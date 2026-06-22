# Runs as a candidate player near a freshly-clicked booth stand. Tags @s im.booth_clicker
# only if this player's UUID matches the captured clicker UUID (#click0..3 im_booth_uuid).
# A UUID is four signed 32-bit ints, so a per-int score compare is an exact identity match.
execute store result score #cand0 im_booth_uuid run data get entity @s UUID[0]
execute store result score #cand1 im_booth_uuid run data get entity @s UUID[1]
execute store result score #cand2 im_booth_uuid run data get entity @s UUID[2]
execute store result score #cand3 im_booth_uuid run data get entity @s UUID[3]
execute \
    if score #cand0 im_booth_uuid = #click0 im_booth_uuid \
    if score #cand1 im_booth_uuid = #click1 im_booth_uuid \
    if score #cand2 im_booth_uuid = #click2 im_booth_uuid \
    if score #cand3 im_booth_uuid = #click3 im_booth_uuid \
    run tag @s add im.booth_clicker
