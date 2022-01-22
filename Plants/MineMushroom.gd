extends "res://Plants/Tower.gd"

var bullet = preload("res://Bullets/Orbital.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	self.currentBullet = bullet
	
	
func shoot(a):
	for x in range(2):
		spawnbullet(x * PI/2)
	
func spawnbullet(rot):
	var a = bullet.instance()
	get_parent().add_child(a)
	a.speed = 250
	a.start_timer(5)
	a.rotation  = rot
	a.position = self.position
