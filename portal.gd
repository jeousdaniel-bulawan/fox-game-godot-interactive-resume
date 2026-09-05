extends Area2D

@onready var warp = $Warp

func _ready() -> void:
	warp.play()
	warp.finished.connect(_on_warp_finished)

func _on_warp_finished():
	warp.play()

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		body.set_position($DestinationPoint.global_position)
		
