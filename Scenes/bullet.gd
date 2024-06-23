extends Area2D

var velocity = Vector2.RIGHT

func _physics_process(delta):
	position += velocity * delta
