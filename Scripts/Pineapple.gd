extends Area2D

@onready var points = %Points
@onready var player = get_tree().get_first_node_in_group("Player")

func _on_body_entered(body):
	if (body.name == "Player"):
		player.SPEED = 1000
		queue_free()

