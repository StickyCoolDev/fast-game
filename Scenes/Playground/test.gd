extends Area3D

@export var buoyancy_force : float = 25
@export var water_drag : float = 0.95 # Helps stop the "infinite bouncing"
@export var water_angular_drag : float = 0.9 # Keeps the boat from spinning forever

func _physics_process(delta: float) -> void:
	# Get all overlapping RigidBodies
	var bodies = get_overlapping_bodies()
	
	for body in bodies:
		if body is RigidBody3D:
			apply_buoyancy(body, delta)

func apply_buoyancy(body: RigidBody3D, delta: float) -> void:
	# 1. Calculate how deep the body is
	# This is a simple version: depth = water_surface_y - body_y
	var depth = global_transform.origin.y - body.global_transform.origin.y
	
	if depth > 0:
		# 2. Apply upward force based on depth (Archimedes' Principle)
		# We use apply_central_force so it integrates with Godot's physics engine
		var force = Vector3.UP * depth * buoyancy_force
		body.apply_central_force(force)
		
		# 3. Apply Damping (Drag)
		# This simulates the thickness of the water so the boat settles down
		body.linear_velocity *= water_drag
		body.angular_velocity *= water_angular_drag
