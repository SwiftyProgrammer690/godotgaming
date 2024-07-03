extends Area2D

@onready var points = %Points

func _on_body_entered(body):
	if (body.name == "Player"):
		var x_delta = body.position.x - position.x
		points.decrease_lives()
		if (x_delta < 0):
			body.jump_away(-1000)
		else:
			body.jump_away(1000)
