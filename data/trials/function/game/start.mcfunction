gamemode survival @a
clear @a
execute as @a run function trials:game/equip
give @a baked_potato 64
give @a cobblestone 64
# give @a mace

# remove all efects
effect clear @a
effect give @a minecraft:regeneration 1 255 true
effect give @a minecraft:saturation 1 255 true

# execute as @e[tag=trials_marker] at @s run spreadplayers ~ ~ 30 50 true @a
execute as @e[tag=trials_red ] at @s run tp @a[team=red ] ~ ~1 ~
execute as @e[tag=trials_red ] at @s run spawnpoint @a[team=red ] ~ ~ ~

execute as @e[tag=trials_blue] at @s run tp @a[team=blue] ~ ~1 ~
execute as @e[tag=trials_blue] at @s run spawnpoint @a[team=blue] ~ ~ ~

# no teams
execute as @e[tag=trials_neutral] run tag @s remove trials_neutral 
execute as @e[tag=trials_spawn, sort=random, limit=1] run tag @s add trials_neutral 
execute as @e[tag=trials_neutral ] at @s run tp @a[team=neutral ] ~ ~1 ~
execute as @e[tag=trials_neutral ] at @s run spawnpoint @a[team=neutral ] ~ ~ ~

# Start Effect
# execute as @e[tag=trials_spawn] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~
execute as @e[tag=trials_spawn] at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2
execute as @e[tag=trials_spawn] at @s run particle minecraft:explosion_emitter ~ ~1 ~

# Music
execute as @e at @s if score enable_music trials matches 1 run playsound minecraft:music_disc.precipice record @s ~ ~ ~ 300 1 1

# Set Timer
scoreboard players operation time_left trials = round_length trials
scoreboard players set game_running trials 1
bossbar set minecraft:trial_timer visible true
bossbar set minecraft:trial_timer players @a