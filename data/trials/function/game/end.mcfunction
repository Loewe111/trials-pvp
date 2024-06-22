scoreboard players set game_running trials 0
execute as @e[tag=trials_marker] at @s run spawnpoint @a ~-3 ~1 ~
execute as @e[tag=trials_marker] at @s run spreadplayers ~ ~ 1 5 false @a
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 master @s

bossbar set minecraft:trial_timer visible false
gamemode adventure @a