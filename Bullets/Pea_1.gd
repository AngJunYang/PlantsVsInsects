extends "res://Bullets/Bullet.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _process(delta):
	if target:
		self.rotation = self.global_position.angle_to_point(target.global_position) + PI


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
