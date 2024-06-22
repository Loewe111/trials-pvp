# Death Detector
scoreboard objectives remove trial_death_detector
scoreboard objectives add death_detector deathCount

# Game Variables
scoreboard objectives remove trial_timer
scoreboard objectives add trials dummy
scoreboard players set time_left trials -1
scoreboard players set game_running trials 0
scoreboard players set start_countdown trials -1

scoreboard players set MINUTE trials 60
scoreboard players set TICKS trials 20
scoreboard players set PK_SCORE trials 10

#> Round lengths:
# 15 Min:
# scoreboard players set round_length trials 18000
# 10 Min:
scoreboard players set round_length trials 12000
# 90sec:
# scoreboard players set round_length trials 1800

# Scores
function trials:game/reset_scores