extends Node2D



func _on_menu_pressed():
	$Buttons.restart()
	Turn.current_scene = "menu"
	get_tree().change_scene_to_file("res://menu.tscn")
