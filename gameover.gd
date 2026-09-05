extends Node2D


@onready var over = $gameover

func _ready() -> void:
	over.play(0.8)

func _on_proceed_pressed() -> void:
	get_tree().change_scene_to_file("res://world.tscn")

func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")
