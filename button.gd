extends Button
var tac = preload("res://tac.tscn")
var toe = preload("res://toe.tscn")
var turn = preload("res://Turn.gd")
var highlighter = preload("res://highlight.tscn")
var assigned = false
var id = -1
var x = -1
var y = -1
var coor = Coordinate.new(id, y)

func _ready():
	pass
func _on_pressed():
	if !assigned && Turn.winner == -1:
		assigned = true
		_tic_or_tac()
		


func _tic_or_tac():
	if Turn.turn_number%2 == 1:
		var temp = toe.instantiate()
		$".".add_child(temp)
		coor.cid = id
		coor.cy = y
		Game.player1[id] = coor
	else:
		var temp = tac.instantiate()
		$".".add_child(temp)
		coor.cid = id
		coor.cy = y
		Game.player2[id] = coor
	Game.check_winner()
	Turn.turn_number += 1
	
func add_highlight():
	var highlight_temp = highlighter.instantiate()
	$".".add_child(highlight_temp)
	
func restart():
	queue_free()
#Game.player1.append({x: x, y: y}
#listmove = player1.filter(move => move.x == x && move.y === y)
#listmove.lenngth === wincondiion




