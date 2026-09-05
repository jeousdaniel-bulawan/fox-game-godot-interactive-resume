extends Node2D

@onready var gold = $gold
var Gem = preload("res://Collectables/Gem.tscn")

func _on_timer_timeout():
	var gemTemp = Gem.instantiate()
	var rng = RandomNumberGenerator.new()
	var ranint = rng.randi_range(10, 400)
	gemTemp.position = Vector2(ranint, 360)
	add_child(gemTemp)
	gold.play(3)
