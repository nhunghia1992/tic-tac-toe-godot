extends Label
var turn_number = 1
var winner = -1
var something = false

func _ready():
	Turn.position = Vector2(640,256)


func _process(_delta):
	if winner == -1 && turn_number <= pow(Game.size,2):
		text = "Turn " + str(turn_number) 
	elif turn_number > pow(Game.size, 2):
		text = "Draw"
	else:
		text = "Player " + str(winner) + " wins" 
