extends Label

func _ready():
	# Wait a frame to ensure Game is initialized
	await get_tree().process_frame
	update_gold_display()

func _process(_delta):
	update_gold_display()

func update_gold_display():
	if Engine.has_singleton("Game"):
		text = "Gold: " + str(Game.Gold)
	else:
		text = "Gold: 0"
