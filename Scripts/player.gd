extends CharacterBody2D


const SPEED = 500.0
const JUMP_VELOCITY = -900.0
@onready var sprite_2d = $Hi

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	var IS_LEFT = velocity.x < 0
	
	if (velocity.x < 0 || velocity.x > 0):
		sprite_2d.animation = "running"
	else:
		sprite_2d.animation = "default"

	if not is_on_floor():
		velocity.y += gravity * delta
		sprite_2d.animation = "jumping"

	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 30)

	move_and_slide()
	
	sprite_2d.flip_h = IS_LEFT
