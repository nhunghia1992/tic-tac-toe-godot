extends Label
var turn_number = 1
var winner = -1
var game_condition = "Undecided"
var timeP1 = 0.0
var timeP2 = 0.0


func _ready():
	Turn.position = Vector2(640,256)


func _process(_delta):
	#if winner == -1 && turn_number <= Game.max_id:
	#	text = "Turn " + str(turn_number) 
	
	if winner != -1:
		game_condition = "Player " + str(winner) + " wins"
	elif turn_number > Game.max_id:
		game_condition = "Draw"
	
	if turn_number%2 == 1 && game_condition == "Undecided":
		timeP1 += _delta
	if turn_number%2 == 0 && game_condition == "Undecided":
		timeP2 += _delta
	var timeP1_rounded = round(timeP1)
	var timeP2_rounded = round(timeP2)
	
	var players_info =  '\n' + "Player 1: " + str(timeP1_rounded) + '\n' + "Player 2: " + str(timeP2_rounded)
	
	if game_condition == "Undecided":
		text = "Turn " + str(turn_number)  + players_info
	else:
		text = game_condition + players_info
	
