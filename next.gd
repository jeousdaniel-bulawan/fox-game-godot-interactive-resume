extends Node2D

@onready var back = $back


func _ready() -> void: 
	back.play(1.5)


func _on_nex_1_pressed() -> void:
	get_tree().change_scene_to_file("res://next3.tscn")
	ButtonSoundManager.play_click()


func _on_back_2_pressed() -> void:
	get_tree().change_scene_to_file("res://info.tscn")
	ButtonSoundManager.play_click()
