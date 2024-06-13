extends Node

var tac = preload("res://tac.tscn")
var toe = preload("res://toe.tscn")
var but = preload("res://button.tscn")
var n = Game.size
var children = []

func _ready():
	create()
	

func create():
	for j in range(n):
		for i in range(n):
			var temp = but.instantiate()
			temp.position = Vector2(256 + i * 70 ,16 + j * 70)
			temp.x = i 
			temp.y = j
			temp.id = temp.x + temp.y * n
			add_child(temp)
	children = $".".get_children()

func restart():
	Game.player1.clear()
	Game.player2.clear()
	Game.player1.resize(Game.max_id)
	Game.player2.resize(Game.max_id)
	Game.winning_move.clear()
	Turn.turn_number = 1
	Turn.winner = -1
	Turn.game_condition = "Undecided"
	Turn.timeP1 = 0.0
	Turn.timeP2 = 0.0

func _on_restart_button_pressed():
	propagate_call("restart", [] , false)
	

func create_highlight(list):
	for i in list:
		children[i].add_highlight()
