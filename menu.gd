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


func _on_p_1_name_text_changed():
	if $P1Name.text == "":
		Turn.P1name = "Player 1"
	else:
		Turn.P1name = $P1Name.text


func _on_p_2_name_text_changed():
	if $P2Name.text == "":
		Turn.P2name = "Player 2"
	else:
		Turn.P2name = $P2Name.text
