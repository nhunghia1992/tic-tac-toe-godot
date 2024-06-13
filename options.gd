extends Node2D


func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
	Turn.change_current_scene("menu")
	



func _on_size_drag_ended(_value_changed):
	$"Label Size".text = "Size: " + str($Size.value)
	Game.size = $Size.value
	$"Win condition".set_max($Size.value) 
	$"Label Win".text = "Win condition: " + str($"Win condition".value)
	Game.change_settings($Size.value,$"Win condition".value)


func _on_win_condition_drag_ended(_value_changed):
	$"Label Win".text = "Win condition: " + str($"Win condition".value)
	Game.win_condition = $"Win condition".value
	Game.change_settings($Size.value,$"Win condition".value)
