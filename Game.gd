extends Node
var size = 3
var win_condition = 3
var player1 = []
var player2 = []
var max_id = pow(size,2)

func _ready():
	player1.resize(max_id)
	player2.resize(max_id)

func check_winner():
	if Turn.turn_number%2 == 1:
		for i in range(player1.size()):
			if player1[i] == null:
				continue
			if (check_horizontal(i,player1) || check_diagonal(i,player1) || check_vertical(i,player1) || check_reverse_diagonal(i,player1)):
				Turn.winner = 1
	else:
		for i in range(player2.size()):
			if player2[i] == null:
				continue
			if (check_horizontal(i,player2) || check_diagonal(i,player2) || check_vertical(i,player2) || check_reverse_diagonal(i,player2)):
				Turn.winner = 2

func check_horizontal(index, list):
	var ycheck = list[index].get_y()
	for i in range(1,win_condition):
		var check1 = list[index].get_id() + 1 * i
		var coor1 = Coordinate.new(check1, ycheck)
		if !search(coor1,list,check1):
			return false
	return true
		
func check_vertical(index, list):
	var ycheck = list[index].get_y()
	for i in range(1,win_condition):
		var check1 = list[index].get_id() + size * i
		var coor1 = Coordinate.new(check1, ycheck + i)
		if !search(coor1, list, check1):
			return false
	return true

func check_diagonal(index, list):
	var ycheck = list[index].get_y()
	for i in range(1,win_condition):
		var check1 = list[index].get_id() + (size + 1) * i
		var coor1 = Coordinate.new(check1, ycheck + i)
		if !search(coor1,list,check1):
			return false
	return true

		
func check_reverse_diagonal(index, list):
	var ycheck= list[index].get_y()
	for i in range(1,win_condition):
		var check1 = list[index].get_id() + (size - 1) * i
		var coor1 = Coordinate.new(check1, ycheck + i)
		if !search(coor1,list,check1):
			return false
	return true

func search(coor, list, index):
	if index >= list.size() || index < 0:
		return false
	if list[index] == null:
		return false
	return list[index].get_id() == coor.get_id() && list[index].get_y() == coor.get_y()
	
	
