extends Node3D

@export var speed : float= 0.1

func _process(_delta: float) -> void:
	position.x -= speed
	if position.x < -30:
		position.x = 30
	
