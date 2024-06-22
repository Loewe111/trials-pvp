execute if score game_running trials matches 1 run return fail
title @a actionbar {"text":"Generating Trial Chamber...","color":"green"}
schedule function trials:game/generate 5t
scoreboard players set start_countdown trials 120

# Reset Scores
function trials:game/reset_scores