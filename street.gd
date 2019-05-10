extends AnimatedSprite
onready var sprite = self.get_node(".")
onready var camera = self.get_parent()

func _ready():
	pass
	##connect("animation_finished",self, "_on_AnimatedSprite_animation_finished")


func _process(delta):
	##var new_anim =
	if(Input.is_key_pressed(KEY_LEFT)):
		self.position.x-= 3
		sprite.play("walk left")
		##new_anim = "walk right"
	elif(Input.is_key_pressed(KEY_RIGHT)):
		self.position.x+= 3
		sprite.play("walk right")
	else:
		sprite.play("idle")
		##new_anim = "walk left"
	if (self.get_position().x > 1020):
		get_tree().change_scene("res://fountain.tscn")
	if (self.get_position().x < 0):
		get_tree().change_scene("res://wall_scene.tscn")
	
