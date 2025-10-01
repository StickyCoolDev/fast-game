extends CharacterBody3D

# @export variable
@export var SPEED : float = 5.0
@export var JUMP_VELOCITY : float = 5

# regular variables
var multiplier : float = 0 

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		multiplier += 0.2
		velocity += get_gravity() * multiplier * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	if is_on_floor():
		multiplier = 0
	var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
