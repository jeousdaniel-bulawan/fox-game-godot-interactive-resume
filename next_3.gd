extends Node2D

@onready var back = $back

func _ready() -> void:
	if back:  # Check if node exists
		back.play(1.5)
	else:
		push_error("Back audio node not found")

func _on_done_pressed() -> void:  # Fixed function name
	ButtonSoundManager.play_click()
	get_tree().change_scene_to_file("res://next2.tscn")


func _on_back_23_pressed() -> void:
	ButtonSoundManager.play_click()
	get_tree().change_scene_to_file("res://next.tscn")
