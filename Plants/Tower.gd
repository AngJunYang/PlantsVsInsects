extends Node2D

# How far the tower can fire
export (float) var attack_range = 64.0;
# How fast the tower can fire
export (float) var attack_speed = 1.0;
# How much the tower costs to build
export (int) var cost = 10;
onready var bullet_1 = preload("res://Bullets/Pea_1.tscn")
var currentBullet = bullet_1
var canFire = true
export(String,"nearest") var targetting;
func _ready():
	$Range/CollisionShape2D.shape.radius = attack_range
	pass # Replace with function body.

func _process(delta):
	if canFire and get_enemy():
		var a = currentBullet.instance()
		self.add_child(a)
		a.speed = 5
		a.start_timer(2)
		self.canFire = false
	pass

func get_enemy():
		var bodies = $Range.get_overlapping_bodies()
		var enemies = []
		var nearest = null
		for body in bodies:
			if body.is_in_group("Enemy"):
				enemies.add(body)
		if enemies.size() == 0:
			return null
			
		match(targetting):
			"nearest":
				nearest = enemies[0]
				for body in enemies:
					if (self.position - body.position).length() < (self.position - nearest.position).length():
						nearest = body 
		return nearest


func _on_AtkCD_timeout():
	self.canFire = true
