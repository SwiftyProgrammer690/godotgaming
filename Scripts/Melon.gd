extends Area2D

@onready var points = %Points
@onready var pick_up = %PickUp

func _on_body_entered(body):
	if (body.name == "Player"):
		pick_up.play()
		queue_free()
		points.add_point()
