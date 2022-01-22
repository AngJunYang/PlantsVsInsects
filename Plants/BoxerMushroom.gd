extends "res://Plants/Tower.gd"


var bullet = preload("res://Bullets/Tack.tscn")


func shoot(a):
	for x in range(10):
		spawnbullet(x * PI/5)
	
func spawnbullet(rot):
	var a = bullet.instance()
	get_parent().add_child(a)
	a.speed = 250
	a.start_timer(5)
	a.rotation  = rot
	a.position = self.position
