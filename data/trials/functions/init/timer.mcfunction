bossbar remove trial_timer
bossbar add trial_timer "trial_timer"
bossbar set minecraft:trial_timer players @a
execute store result bossbar minecraft:trial_timer max run scoreboard players get round_length trials
bossbar set minecraft:trial_timer style notched_10
bossbar set minecraft:trial_timer color blue
bossbar set minecraft:trial_timer visible false