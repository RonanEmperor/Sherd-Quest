## Main setup for the objectives.
## Runs from global:load through the tag #global:setup

# Global objectives
scoreboard objectives add state dummy {"text": "State", "color": "dark_aqua"}
scoreboard objectives add ticks dummy {"text": "Ticks", "color": "dark_aqua"}

# Debug
scoreboard objectives add debug dummy {"text": "Debug", "color": "gray"}

# Objectives for the levels
scoreboard objectives add levels dummy {"text": "Levels", "color": "aqua"}
scoreboard objectives add pot_direction dummy {"text": "Pot Direction", "color": "aqua"}
scoreboard objectives add pot_direction_updated dummy {"text": "Pot Direction (Updated)", "color": "aqua"}
scoreboard objectives add level_data dummy {"text": "Level Data", "color": "aqua"}
scoreboard objectives add sherd_id dummy {"text": "Sherd ID", "color": "aqua"}
scoreboard objectives add is_matching dummy {"text": "Is Matching", "color": "aqua"}
scoreboard objectives add completion_check dummy {"text": "Completion Check", "color": "aqua"}
scoreboard objectives add current_level dummy {"text": "Current Level", "color": "aqua"}