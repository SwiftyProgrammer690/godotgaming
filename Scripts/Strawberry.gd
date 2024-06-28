extends Area2D

@onready var player = get_tree().get_first_node_in_group("Player")

func _on_body_entered(body):
	if (body.name == "Player"):
		player.JUMP_VELOCITY = -1300
		queue_free()
		
# 17 when speed+jump increased
