extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	if (self.is_pressed()):
		print("pressed")

	# Replace with function body.
func _process(delta):
	if (self.pressed):
		print("Button pressed!")
		get_tree().change_scene("res://wall_scene.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
