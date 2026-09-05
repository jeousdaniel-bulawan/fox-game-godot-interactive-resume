extends Area2D
var entered = false
var player_gold = 0
@onready var req = $Req
@onready var door = $door
func _ready():
	req.text = "Need 300 gold to enter!"
	req.visible = true

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		entered = true
		door.play()
		player_gold = Game.Gold  # Update gold when player enters

func _process(_delta: float) -> void:
	if entered:
		if Game.Gold >= 300:  # Check current gold instead of saved value
			req.visible = true
			req.text = "Press ENTER to Exit."
			if Input.is_action_just_pressed("enter"):
				get_tree().change_scene_to_file("res://info.tscn")
		else:
			req.visible = true
			req.text = "Need " + str(300 - Game.Gold) + " more gold."
