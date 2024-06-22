execute if score time_left trials matches 0 run function trials:game/end

# Timer
execute if score time_left trials matches 0.. run scoreboard players remove time_left trials 1
execute if score time_left trials matches 0.. run scoreboard players operation time_left_seconds trials = time_left trials
execute if score time_left trials matches 0.. run scoreboard players operation time_left_seconds trials /= TICKS trials
execute if score time_left trials matches 0.. run scoreboard players operation time_left_minutes trials = time_left_seconds trials
execute if score time_left trials matches 0.. run scoreboard players operation time_left_minutes trials /= MINUTE trials
execute if score time_left_minutes trials matches 1.. run scoreboard players operation time_left_seconds trials %= MINUTE trials

execute if score time_left_minutes trials matches 1.. run bossbar set trial_timer name [{"score":{"name":"time_left_minutes","objective":"trials"},"bold":true,"color":"green"},{"text":"min ","color":"white", "bold":false},{"score":{"name":"time_left_seconds","objective":"trials"},"bold":true,"color":"green"},{"text":"s","color":"white", "bold":false}]
execute if score time_left_minutes trials matches ..0 run bossbar set trial_timer name [{"score":{"name":"time_left_seconds","objective":"trials"},"bold":true,"color":"green"},{"text":"s","color":"white", "bold":false}]

execute store result bossbar minecraft:trial_timer value run scoreboard players get time_left trials

# Death detection
execute as @e[scores={death_detector=1..}] at @s run function trials:game/respawn
execute as @e[scores={death_detector=1..}] run scoreboard players reset @s death_detector

# Countdown
execute if score start_countdown trials matches 60 run title @a title {"text":"3","color":"yellow","bold":true}
execute if score start_countdown trials matches 60 run playsound minecraft:block.note_block.pling master @a
execute if score start_countdown trials matches 40 run title @a title {"text":"2","color":"yellow","bold":true}
execute if score start_countdown trials matches 40 run playsound minecraft:block.note_block.pling master @a
execute if score start_countdown trials matches 20 run title @a title {"text":"1","color":"yellow","bold":true}
execute if score start_countdown trials matches 20 run playsound minecraft:block.note_block.pling master @a
execute if score start_countdown trials matches 0 run title @a title {"text":"Go!","color":"green","bold":true}
execute if score start_countdown trials matches 0 run function trials:game/start
execute if score start_countdown trials matches 0.. run scoreboard players remove start_countdown trials 1

# Calculate Scores
execute as @a run scoreboard players set @s trials_scoreboard 0
execute if score game_running trials matches 1 as @a run scoreboard players operation @s trials_scoreboard = @s trials_player_kills
execute as @a run scoreboard players operation @s trials_scoreboard *= PK_SCORE trials
execute as @a run scoreboard players operation @s trials_scoreboard += @s trials_mob_kills

# Kill Bats
kill @e[type=bat]