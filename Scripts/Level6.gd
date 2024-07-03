extends Node2D
@onready var bg_music_d = %BgMusicD



func _on_bg_music_d_finished():
	bg_music_d.play()
