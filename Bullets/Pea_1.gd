extends "res://Bullets/Bullet.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _process(delta):
	if !target:
		var direction = (self.position - target).normalized()
		var new_angle =  PI + atan2(direction.y, direction.x) 
		self.rotation  = new_angle - rotation


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
