extends Node2D

@onready var win = $win
@onready var back = $back
@onready var click = $click


func _ready() -> void: 
	back.play(1.5)



func _on_nex_2_pressed() -> void:
	get_tree().change_scene_to_file("res://next2.tscn")
	ButtonSoundManager.play_click()
