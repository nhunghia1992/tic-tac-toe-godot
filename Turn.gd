extends Label
var turn_number = 1
var winner = -1
var game_condition = "Undecided"
var timeP1 = 0.0
var timeP2 = 0.0
var current_scene = "menu"
var P1name = "Player 1"
var P2name = "Player 2"


func _ready():
	Turn.position = Vector2(16,96)

func change_current_scene(scene_name):
	current_scene = scene_name

func change_text(delta):
	if winner == 1:
		game_condition = P1name + " " + " wins"
	elif winner == 2:
		game_condition = P2name + " " + " wins"
	elif turn_number > Game.max_id:
		game_condition = "Draw"
	
	if turn_number%2 == 1 && game_condition == "Undecided":
		timeP1 += delta
	if turn_number%2 == 0 && game_condition == "Undecided":
		timeP2 += delta
	var timeP1_rounded = round(timeP1)
	var timeP2_rounded = round(timeP2)
	
	var players_info =  '\n' + P1name + ": " + str(timeP1_rounded) + '\n' + P2name + ": " + str(timeP2_rounded)
	
	if game_condition == "Undecided":
		text = "Turn " + str(turn_number)  + players_info
	else:
		text = game_condition + players_info

func _process(_delta):
	#if winner == -1 && turn_number <= Game.max_id:
	#	text = "Turn " + str(turn_number) 
	if current_scene == "global":
		change_text(_delta)
	else:
		text = ""
	
	
	
