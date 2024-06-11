extends Node

var tac = preload("res://tac.tscn")
var toe = preload("res://toe.tscn")
var but = preload("res://button.tscn")
var n = Game.size

func _ready():
	create()
		
	
func create():
	for i in range(n):
		for j in range(n):
			var temp = but.instantiate()
			temp.position = Vector2(320 + i * 70 ,270 + j * 70)
			temp.x = i 
			temp.y = j
			temp.id = temp.x + temp.y * n
			add_child(temp)

func restart():
	pass
func _on_restart_button_pressed():
	propagate_call("restart", [] , false)
	Game.player1.clear()
	Game.player2.clear()
	Game.player1.resize(Game.max_id)
	Game.player2.resize(Game.max_id)
	Turn.turn_number = 1
	Turn.winner = -1
	create()
