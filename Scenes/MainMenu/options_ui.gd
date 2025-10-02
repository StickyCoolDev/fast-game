extends Control

@onready var Main = $Main
@onready var Credits = $Credits
func _ready() -> void:
	Main.show()
	Credits.hide()




func _on_option_main_button_pressed() -> void:
	Main.show()
	Credits.hide()


func _on_option_credits_button_pressed() -> void:
	Main.hide()
	Credits.show()
