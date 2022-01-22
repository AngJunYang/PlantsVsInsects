extends "res://Plants/Tower.gd"

var bullet_1 = preload("res://Bullets/Pea_1.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.currentBullet = bullet_1
