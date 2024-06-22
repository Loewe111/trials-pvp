kill @e[tag=trials_spawn]
kill @e[type=item]
execute at @e[limit=1, tag=trials_marker] run fill ~130 80 ~130 ~-130 -64 ~-130 minecraft:obsidian

execute at @e[limit=1, tag=trials_marker] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["trials_generator"]}
execute as @e[tag=trials_generator] at @s run spreadplayers ~ ~ 20 50 false @s
execute at @e[limit=1, tag=trials_generator] run place structure minecraft:trial_chambers ~ ~ ~

execute as @e[type=!armor_stand, type=!player] at @s if entity @s[y=-64, dy=150] run kill @s
kill @e[tag=trials_generator]