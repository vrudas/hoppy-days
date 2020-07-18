# hoppy-days
Completed Hoppy Days project from Udemy Course ["Discovering Godot: Make Video Games in Python-like GDScript"](https://www.udemy.com/course/godot).
The main purpose of this project was to learn Godot engine capabilities, 
so it's not pretending to be a fully completed game and may contain some bugs or other development issues.

## How it looks

- Level
![alt text](https://github.com/vrudas/hoppy-days/blob/master/Docs/level_screen.png "Game Level")

- Game Win Screen
![alt text](https://github.com/vrudas/hoppy-days/blob/master/Docs/game_win.png "Game Win Screen")

- Game Over Screen
![alt text](https://github.com/vrudas/hoppy-days/blob/master/Docs/game_over.png "Game Over Screen")


## Game Controls

- Move Left (`<-` or `A`)
- Move Right (`->` or `D`)
- Jump (`^` or `W` or `SPACE`)
- Quit the game (`ESC`)
- Restart Game (`SPACE`) - only at ending screens


## Game Objects

- Player (Bunny): can move left and right, also have the ability to jump

- Cake (Coin): a collectible item that should be picked up by Player (every 10 collected will power up Player-'s life count)

- Spikes: hazard item which damage Player

- Spike-man: NPC which moves left-right

- Cloud: NPC which moves left-right and can shoot a bolt of lightning into a player

- JumpPad: increase Player jump height on entering

- Portal: the endpoint of a game that indicates successful completion of level