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
			temp.x = i + n * 4
			temp.y = j
			temp.id = temp.x + temp.y * n + 1
			add_child(temp)

func restart():
	pass
func _on_restart_button_pressed():
	propagate_call("restart", [] , false)
	Game.player1.clear()
	Game.player2.clear()
	Turn.turn_number = 1
	Turn.winner = -1
	create()
