extends MeshInstance3D



func _on_interaction_area_body_entered(body: Node3D) -> void:
	if body.is_in_group("Player"):
		$InteractMark.hide()
