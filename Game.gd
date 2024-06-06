extends Node
var size = 3
var player1 = []
var player2 = []

func check_winner():
	for i in range(player1.size()):
		var isId = i%2 == 0
		if isId:
			if (check_horizontal(i,player1) || check_diagonal(i,player1) || check_vertical(i,player1) || check_reverse_diagonal(i,player1)):
				Turn.winner = 1
	for i in range(player2.size()):
		var isId = i%2 == 0
		if isId:
			if (check_horizontal(i,player2) || check_diagonal(i,player2) || check_vertical(i,player2) || check_reverse_diagonal(i,player2)):
				Turn.winner = 2

func check_horizontal(index, list):
	var flag1 = false
	var check1 = list[index] + 1
	var check2 = list[index] + 2
	if check1 in list && check2 in list:
		flag1 = true
	if flag1 == true:
		var yindex1 = list.find(check1) + 1
		var yindex2 = list.find(check2) + 1
		var rowcheck = list[yindex1] == list[index + 1] && list[index + 1] == list[yindex2] && list[yindex1] == list[yindex2]
		if rowcheck:
			return true
	else:
		return false
		
func check_vertical(index, list):
	if list[index] + size in list && list[index] + size*2 in list:
		return true
	else:
		return false

func check_diagonal(index, list):
	var flag1 = false
	var check1 = list[index] + size + 1
	var check2 = list[index] + 2 * size + 2
	if check1 in list && check2 in list:
		flag1 = true
	if flag1 == true:
		var yindex1 = list.find(check1) + 1
		var yindex2 = list.find(check2) + 1
		if list[yindex1] != list[index] && list[index] != list[yindex2] && list[yindex1] != list[yindex2]:
			return true
	else: 
		return false
		

		
func check_reverse_diagonal(index, list):
	var flag1 = false
	var check1 = list[index] + size - 1
	var check2 = list[index] + 2 * size - 2
	if check1 in list && check2 in list:
		flag1 = true
	if flag1 == true:
		var yindex1 = list.find(check1) + 1
		var yindex2 = list.find(check2) + 1
		if list[yindex1] != list[index] && list[index] != list[yindex2] && list[yindex1] != list[yindex2]:
			return true
	else: 
		return false
