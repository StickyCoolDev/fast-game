extends CanvasLayer

@onready var InfoTab : TabContainer = $Control/MarginContainer/InfoTabContainer

func _ready() -> void:
	close_info_tab()

func open_info_tab() -> void:
	InfoTab.show()

func close_info_tab() -> void:
	InfoTab.hide()

func _on_close_button_pressed() -> void:
	close_info_tab()
