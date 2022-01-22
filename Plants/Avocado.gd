extends "res://Plants/Tower.gd"

var bullet = preload("res://Bullets/Bomb.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	self.currentBullet = bullet
