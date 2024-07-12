#execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ wheat[age=7] run function blob:use_item/farmer/tool/replanting_check_type
#execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ beetroots[age=3] run function blob:use_item/farmer/tool/replanting_beetroots

execute at @s run execute as @e[type=minecraft:item,distance=..10 ,name="Wheat Seeds"] run tag @s add seed
#execute as @e[tag=seed] align xyz positioned ~0.5 ~0.5 ~0.5 at @s run setblock ~ ~ ~ wheat[age=0]
execute as @e[tag=seed] at @s if block ~ ~-0.5 ~ farmland run tag @s add seed_place
execute at @e[tag=seed_place] run summon leash_knot ~ ~1 ~ {Tags:["seed_here"]}
kill @e[tag=seed_place]
execute at @e[tag=seed_here] run setblock ~ ~ ~ wheat[age=0]
kill @e[tag=seed_here]