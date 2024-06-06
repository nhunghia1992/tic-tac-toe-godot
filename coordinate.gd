class_name Coordinate
var cid = -1
var cy = -1 

func _init(id, y):
	cid = id
	cy = y
	
func get_id():
	return cid

func get_y():
	return cy

func set_id(num):
	cid = num

func set_y(num):
	cy = num
	
func info():
	print("id: " + str(cid) + " & y: " + str(cy))
