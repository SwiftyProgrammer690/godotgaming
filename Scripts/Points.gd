extends Node

var points = 0
var lives = 3

@onready var label = %Label
@export var hearts : Array[Node]

func decrease_lives():
	lives -= 1
	
	for heart in 3:
		if (heart < lives):
			hearts[heart].show()
		else:
			hearts[heart].hide()
	
	if (lives == 0):
		get_tree().reload_current_scene()

func add_point():
	points += 1
	label.text = "Melons: " + str(points)
