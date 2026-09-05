extends Area2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@export var skew_value := 5
@export var bend_grass_animation_speed = 0.3
@export var grass_return_animation_speed = 5.0
@onready var grass = $Grass

func _on_body_entered(body: Node2D) -> void:
	if body == get_tree().get_first_node_in_group("player"):
		var direction = global_position.direction_to(body.global_position)
		var skew_amount: int = direction.x * skew_value
		grass.play(1.5)
		
		var timer = Timer.new()
		add_child(timer)
		timer.wait_time = 0.5  # Play for 1 second
		timer.one_shot = true
		timer.timeout.connect(func():
			grass.stop()
			timer.queue_free()
		)
		timer.start()
		
		var tween = create_tween()
		tween.tween_property(
			sprite_2d.material,
			"shader_parameter/skew",
			skew_amount,
			bend_grass_animation_speed
		).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_CUBIC)
		
		tween.tween_property(
			sprite_2d.material,
			"shader_parameter/skew",
			0.0,
			grass_return_animation_speed
		).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_ELASTIC)
