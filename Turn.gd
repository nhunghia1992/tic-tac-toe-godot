extends Label
var turn_number = 1
var winner = -1

func _ready():
	Turn.position = Vector2(640,256)


func _process(_delta):
	if winner == -1 && turn_number <= pow(Game.size,2):
		text = "Turn " + str(turn_number) 
	elif winner != -1:
		text = "Player " + str(winner) + " wins" 
	elif turn_number > Game.max_id:
		text = "Draw"
	else:
		text = "What?"
	
