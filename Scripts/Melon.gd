extends Area2D

@onready var points = %Points

func _on_body_entered(body):
	if (body.name == "Player"):
		queue_free()
		points.add_point()
