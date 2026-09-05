extends Node2D

@onready var back = $back

func _ready() -> void:
	back.play(15)

func _on_proceed_pressed() -> void:
	ButtonSoundManager.play_click()
	get_tree().change_scene_to_file("res://main.tscn")
