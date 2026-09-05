extends Node2D

@onready var win = $win
@onready var back = $back
@onready var click = $click


func _ready() -> void: 
	win.play(0.5)
	win.finished.connect(func():
		back.play(1.5)
)




func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")
	ButtonSoundManager.play_click()
