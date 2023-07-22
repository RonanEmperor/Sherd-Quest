## Function that handles players joining.
## Runs from global:tick, when a player has a different "tick" score than a global score.

tellraw @a[tag=debug] {"text": "Joined.", "color": "gray", "italic": true}