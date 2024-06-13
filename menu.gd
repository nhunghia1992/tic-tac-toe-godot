extends Node2D


func _on_play_pressed():
	get_tree().change_scene_to_file("res://global.tscn")
	Turn.change_current_scene("global")
	


func _on_options_pressed():
	get_tree().change_scene_to_file("res://options.tscn")
	Turn.change_current_scene("options")

func _on_quit_pressed():
	get_tree().quit()
	Turn.change_current_scene("bye")
