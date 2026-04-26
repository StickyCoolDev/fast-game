extends Node3D



func _on_detection_area_body_entered(body: Node3D) -> void:
	if body.is_in_group("Player"):
		$Mark3d.hide()

func _on_detection_area_body_exited(body: Node3D) -> void:
	if body.is_in_group("Player"):
		$Mark3d.show()
