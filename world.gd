extends Node2D

@onready var back = $back

func _ready() -> void:
	back.play(2)


func _on_quit_pressed() -> void:
	ButtonSoundManager.play_click()
	get_tree().change_scene_to_file("res://main.tscn")
