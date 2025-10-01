extends Node3D


func _on_start_button_pressed() -> void:
	# Take the user to the playground 
	# as the main world is Not implemented yet 
	get_tree().change_scene_to_file("res://Scenes/Playground/playground.tscn")


func _on_option_button_pressed() -> void:
	# NOTE : The Option Menu Is Not Implemented
	pass

func _on_exit_button_pressed() -> void:
	get_tree().quit()
