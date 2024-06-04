extends Node
var size = 3
var player1 = []
var player1y = []
var player2 = []
var player2y = []

func check_winner():
	for i in range(player1.size()):
		if (check_horizontal(i,player1) || check_diagonal(i,player1,player1y) || check_vertical(i,player1) || check_reverse_diagonal(i,player1,player1y)):
				Turn.winner = 1
	for i in range(player2.size()):
		if (check_horizontal(i,player2) || check_diagonal(i,player2,player2y) || check_vertical(i,player2) || check_reverse_diagonal(i,player2,player2y)):
				Turn.winner = 2

func check_horizontal(index, list):
	if list[index] + 1 in list && list[index] + 2 in list:
		return true
	else:
		return false
		
func check_vertical(index, list):
	if list[index] + size in list && list[index] + size*2 in list:
		return true
	else:
		return false

func check_diagonal(index, list, listy):
	var flag1 = false
	var check1 = list[index] + size + 1
	var check2 = list[index] + 2 * size + 2
	if check1 in list && check2 in list:
		flag1 = true
	if flag1 == true:
		var yindex1 = list.find(check1) 
		var yindex2 = list.find(check2)
		if listy[yindex1] != listy[index] && listy[index] != listy[yindex2] && listy[yindex1] != list[yindex2]:
			return true
	else: 
		return false
		

		
func check_reverse_diagonal(index, list, listy):
	var flag1 = false
	var check1 = list[index] + size - 1
	var check2 = list[index] + 2 * size - 2
	if check1 in list && check2 in list:
		flag1 = true
	if flag1 == true:
		var yindex1 = list.find(check1) 
		var yindex2 = list.find(check2)
		if listy[yindex1] != listy[index] && listy[index] != listy[yindex2] && listy[yindex1] != list[yindex2]:
			return true
	else: 
		return false


	'''
	var flag1 = false
	var flag2 = false
	if list[index] + size + 1 in list && list[index] + 2 * size + 2 in list:
		flag1 = true
	if list.index(index - size +1) !=  && list[index] - 2 * size + 2 in list:
		flag2 = true
	if flag1 && flag2:
		return true
	else:
		return false
		
	
	if list[index] + size + 1 in list && list[index] + 2 * size + 2 in list:
		return true
	else:
		return false
	'''
