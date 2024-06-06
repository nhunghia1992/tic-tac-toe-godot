extends Node
var size = 3
var player1 = []
var player2 = []

func check_winner():
	for i in range(player1.size()):
		player1[i].info()
		if (check_horizontal(i,player1) || check_diagonal(i,player1) || check_vertical(i,player1) || check_reverse_diagonal(i,player1)):
			Turn.winner = 1
	for i in range(player2.size()):
		if (check_horizontal(i,player2) || check_diagonal(i,player2) || check_vertical(i,player2) || check_reverse_diagonal(i,player2)):
			Turn.winner = 2

func check_horizontal(index, list):
	var check1 = list[index].get_id() + 1
	var check2 = list[index].get_id() + 2
	var ycheck = list[index].get_y()
	var coor1 = Coordinate.new(check1, ycheck)
	var coor2 = Coordinate.new(check2, ycheck)
	return search(coor1,list) && search(coor2,list)
		
func check_vertical(index, list):
	var check1 = list[index].get_id() + size
	var check2 = list[index].get_id() + size*2
	var ycheck = list[index].get_y()
	var coor1 = Coordinate.new(check1, ycheck)
	var coor2 = Coordinate.new(check2, ycheck)
	return search(coor1,list) && search(coor2,list)

func check_diagonal(index, list):
	var check1 = list[index].get_id() + size + 1
	var check2 = list[index].get_id() + 2 * size + 2
	var ycheck = list[index].get_y()
	var coor1 = Coordinate.new(check1, ycheck+1)
	var coor2 = Coordinate.new(check2, ycheck+2)
	return search(coor1,list) && search(coor2,list)

		
func check_reverse_diagonal(index, list):
	var check1 = list[index].get_id() + size - 1
	var check2 = list[index].get_id() + 2 * size - 2
	var ycheck= list[index].get_y()
	var coor1 = Coordinate.new(check1, ycheck+1)
	var coor2 = Coordinate.new(check2, ycheck+2)
	return search(coor1,list) && search(coor2,list)

func search(coor, list):
	for i in list:
		if i.get_id() == coor.get_id() && i.get_y() == coor.get_y():
			return true
	return false
