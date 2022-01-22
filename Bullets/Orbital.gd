extends "res://Bullets/Bullet.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var bullet_ease_out = 0.3
var bullet_time = 0

func _physics_process(delta):
	if bullet_time < bullet_ease_out:
		bullet_time += delta
		self.rotation += delta * 10
	else:
		self.rotation += delta * 5
