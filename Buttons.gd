extends Node

var tac = preload("res://tac.tscn")
var toe = preload("res://toe.tscn")
var but = preload("res://button.tscn")
var n = Game.size

func _ready():
	for i in range(n):
		for j in range(n):
			var temp = but.instantiate()
			temp.position = Vector2(320 + i * 70 ,270 + j * 70)
			temp.x = i + n * 4
			temp.y = j
			temp.id = temp.x + temp.y * n + 1
			add_child(temp)
		
	
