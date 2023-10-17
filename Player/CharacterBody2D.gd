extends CharacterBody2D

const SPEED = 100.0
const JUMP_VELOCITY = -260.0

# Flags
var has_jumped: bool = false

var coins_collected: int = 0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	
	# Handle Jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		has_jumped = true
	if Input.is_action_just_pressed("jump") and !is_on_floor() and has_jumped:
		velocity.y = JUMP_VELOCITY/2
		has_jumped = false
		
	#Drop through platforms
	if Input.is_action_pressed("move_down"):
		position.y += 1
		
	# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()




func _on_hit_detection_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	Signals.hazzard_contact.emit()
