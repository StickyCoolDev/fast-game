extends StaticBody3D

var once = false

func _on_interaction_area_body_entered(body: Node3D) -> void:
	if body.is_in_group("Player"):
		$InteractMark.hide()


func _on_interaction_area_body_exited(body: Node3D) -> void:
	if body.is_in_group("Player"):
		$InteractMark.show()

func interact() -> void:
	Ui.open_info_tab()
	$"../InteractMark".hide()


func _on_visible_on_screen_notifier_3d_screen_entered() -> void:
	if once == false:
		await get_tree().create_timer(0.5).timeout
		$"../PhantomCamera3D".priority = 2
		Ui.open_cenamatic_view()
		$"../PhantomCamera3D".priority = 0
		once = true
