## Function that handles players joining.
## Runs from global:tick, when a player has a different "tick" score than a global score.

tellraw @s[tag=debug] {"text": "Joined.", "color": "gray", "italic": true}
team join players
tp @s 0 64 0 -90 0