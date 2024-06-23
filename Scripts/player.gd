extends CharacterBody2D

signal shoot
var Bullet = preload("res://Scenes/bullet.tscn")
@export var speed = 600

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var dir = get_global_mouse_position() - position
		shoot.emit(Bullet, position, dir)

func _physics_process(delta):
	get_input()
	move_and_slide()
	
func _process(delta):
	look_at(get_global_mouse_position())
