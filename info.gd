extends Node2D

@onready var win = $win
@onready var back = $back


func _ready() -> void: 
	win.play(0.5)
	win.finished.connect(func():
		back.play(1.5)
)



func _on_info_pressed() -> void:
	get_tree().change_scene_to_file("res://next.tscn")
	ButtonSoundManager.play_click()
