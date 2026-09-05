extends Node

@onready var click_sound: AudioStreamPlayer
@onready var hover_sound: AudioStreamPlayer

func _ready() -> void:
	# Setup click sound
	click_sound = AudioStreamPlayer.new()
	add_child(click_sound)
	var click = load("res://vfx/Menu Click Button.mp3")  # Replace with your click sound path
	click_sound.stream = click
	
func play_click() -> void:
	click_sound.play()
