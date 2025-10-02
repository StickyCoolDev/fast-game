extends Node3D

@onready var ExitUI = $"CanvasLayer/UI/ExitUI"
@onready var MenuUI = $CanvasLayer/UI/MenuUI
@onready var OptionsUI = $CanvasLayer/UI/OptionsUI

func _ready() -> void:
	ExitUI.hide()
	OptionsUI.hide()

##Main Menu Buttons
func _on_start_button_pressed() -> void:
	# Take the user to the playground 
	# as the main world is Not implemented yet 
	get_tree().change_scene_to_file("res://Scenes/Playground/playground.tscn")

func _on_option_button_pressed() -> void:
	OptionsUI.show()
	MenuUI.hide()

func _on_exit_button_pressed() -> void:
	ExitUI.show()
	MenuUI.hide()

##ExitUIButtons
func _on_exit_yes_button_pressed() -> void:
	get_tree().quit()

func _on_exit_no_button_pressed() -> void:
	ExitUI.hide()
	MenuUI.show()

##Options UI
func _on_option_exit_pressed() -> void:
	OptionsUI.hide()
	MenuUI.show()
