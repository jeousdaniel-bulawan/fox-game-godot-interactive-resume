extends Node2D

@onready var back = $back
@onready var next = $next

func _ready() -> void:
	back.play(50)
	# Play background music at startup


func _on_proceed_pressed() -> void:
	ButtonSoundManager.play_click()
# Stop the music before proceeding
	get_tree().change_scene_to_file("res://world.tscn")


func _on_quit_pressed() -> void:
	ButtonSoundManager.play_click()
	get_tree().change_scene_to_file("res://main.tscn")
