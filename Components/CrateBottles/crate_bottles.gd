extends StaticBody3D

func _on_interaction_area_body_entered(body: Node3D) -> void:
	if body.is_in_group("Player"):
		$InteractMark.hide()


func _on_interaction_area_body_exited(body: Node3D) -> void:
	if body.is_in_group("Player"):
		$InteractMark.show()

func interact() -> void:
	Ui.open_info_tab()
	$"../InteractMark".hide()
