extends "res://Bullets/Bullet.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var bullet = preload("res://Bullets/Pea_1.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Node2D_area_entered(body):
	if body.get_parent().is_in_group("Enemy"):
		for x in range(10):
			shoot(x * 2 * PI / 10)
		body.get_parent().damage(dmg)
		self.queue_free()
		
		
func shoot(rot):
	var a = bullet.instance()
	get_parent().add_child(a)
	a.speed = 100
	a.start_timer(1)
	a.rotation  = rot
	a.position = self.position
