extends CanvasLayer

@onready var InfoTab : TabContainer = $Control/MarginContainer/InfoTabContainer

@onready var CAplayer : AnimationPlayer = $Control2/AnimationPlayer

@onready var CVeiw1 : ColorRect = $Control2/VBoxContainer/ColorRect
@onready var CVeiw2 : ColorRect = $Control2/VBoxContainer/ColorRect2
@onready var CVeiw3 : ColorRect = $Control2/VBoxContainer/ColorRect3

func _ready() -> void:
	hide_secondary_views()
	close_info_tab()

func open_info_tab() -> void:
	InfoTab.show()

func close_info_tab() -> void:
	InfoTab.hide()

func _on_close_button_pressed() -> void:
	close_info_tab()

func open_cenamatic_view() -> void:
	CAplayer.play("cinematic_ui_open")
	await CAplayer.animation_finished
	await get_tree().create_timer(3).timeout
	CAplayer.play_backwards("cinematic_ui_open")
	hide_secondary_views()

func hide_secondary_views() -> void:
	CVeiw1.hide()
	CVeiw3.hide()

func is_info_tab_open() -> bool:
	return InfoTab.visible
