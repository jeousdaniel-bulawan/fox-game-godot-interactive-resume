extends Node2D

@onready var quit_button = $"Quit"
@onready var start_button = $"Start"
@onready var know_more_button = $"Know More"
@onready var back = $back

func _ready() -> void:
	back.play()  # Remove the index parameter

func _on_start_pressed() -> void:  # Fix function name
	ButtonSoundManager.play_click()
	get_tree().change_scene_to_file("res://instruction.tscn")

func _on_know_more_pressed() -> void:  # Fix function name
	ButtonSoundManager.play_click()
	get_tree().change_scene_to_file("res://resume.tscn")

func _on_quit_pressed() -> void:  # Fix function name
	ButtonSoundManager.play_click()
	get_tree().quit()
