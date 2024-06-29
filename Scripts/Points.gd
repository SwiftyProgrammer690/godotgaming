extends Node

var points = 0
@onready var label = %Label

func add_point():
	points += 1
	label.text = "Melons: " + str(points)
