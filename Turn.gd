extends Label
var turn_number = 1
var winner = -1

func _ready():
	Turn.position = Vector2(640,256)


func _process(_delta):
	if winner == -1:
		text = "Turn " + str(turn_number) 
	else:
		text = "Player " + str(winner) + " wins" 
