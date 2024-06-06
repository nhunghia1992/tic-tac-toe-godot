extends Button
var tac = preload("res://tac.tscn")
var toe = preload("res://toe.tscn")
var turn = preload("res://Turn.gd")
var assigned = false
var id = -1
var x = -1
var y = -1

func _on_pressed():
	if !assigned:
		assigned = true
		_tic_or_tac()
		
		

func _tic_or_tac():
	if Turn.turn_number%2 == 1:
		var temp = toe.instantiate()
		$".".add_child(temp)
		Game.player1.append(id)
		Game.player1.append(y)
	else:
		var temp = tac.instantiate()
		$".".add_child(temp)
		Game.player2.append(id)
		Game.player2.append(y)
	Turn.turn_number += 1
	Game.check_winner()
	print(Game.player1)
	
#Game.player1.append({x: x, y: y}
#listmove = player1.filter(move => move.x == x && move.y === y)
#listmove.lenngth === wincondiion
