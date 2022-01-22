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
export var atk_cooldown = 2.0
func _ready():
	$Range/CollisionShape2D.shape.radius = attack_range
	pass # Replace with function body.

func _process(delta):
	var a = get_enemy()
	print(a)
	if canFire and a:
		shoot(a)
		self.canFire = false
		$AtkCD.start(atk_cooldown)

func shoot(enemy):
	var a = currentBullet.instance()
	self.add_child(a)
	a.speed = 500
	a.target = enemy
	a.start_timer(1)
	var direction = (self.position - enemy.position).normalized()
	var new_angle =  PI + atan2(direction.y, direction.x) 
	a.rotation  = new_angle - a.rotation
	
	
	

func get_enemy():
		var bodies = $Range.get_overlapping_areas()
		var enemies = []
		var nearest = null
		for body in bodies:
			if body.get_parent().is_in_group("Enemy"):
				enemies.append(body)
		if enemies.size() == 0:
			return null
			
		match(targetting):
			"nearest":
				print("!")
				nearest = enemies[0]
				for body in enemies:
					if (self.position - body.position).length() < (self.position - nearest.position).length():
						nearest = body 
		return nearest


func _on_AtkCD_timeout():
	print("ok")
	self.canFire = true
