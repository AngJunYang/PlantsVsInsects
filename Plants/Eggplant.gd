extends "res://Plants/Tower.gd"


var bullet = preload("res://Bullets/Boomerang.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	self.currentBullet = bullet


func shoot(a):
	var direction = (self.global_position + Vector2(16,16) - a.global_position).normalized()
	var new_angle =  PI + atan2(direction.y, direction.x) 
	var b  = new_angle - a.rotation
	
	for x in range(10):
		yield(get_tree().create_timer(0.1), "timeout")
		spawnbullet(b)
		
func spawnbullet(rot):
	var a = bullet.instance()
	get_parent().add_child(a)
	a.speed = 250
	a.start_timer(5)
	a.rotation  = rot
	a.position = self.position


