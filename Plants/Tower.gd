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
export(String,"nearest","strongest","weakest","furthest") var targetting = "nearest";
export (float) var bulletspeed = 500
export var atk_cooldown = 2.0
func _ready():
	$Range/CollisionShape2D.shape.radius = attack_range
	pass # Replace with function body.

func _process(delta):
	var a = get_enemy()
	if canFire and a and checkTime():
		shoot(a)
		self.canFire = false
		$AtkCD.start(atk_cooldown)

func shoot(enemy):
	var a = currentBullet.instance()
	self.add_child(a)
	a.speed = bulletspeed
	a.target = enemy
	a.start_timer(1)
	var direction = (self.global_position + Vector2(16,16) - enemy.global_position).normalized()
	var new_angle =  PI + atan2(direction.y, direction.x) 
	a.rotation  = new_angle - a.rotation
	
func checkTime():
	var time = get_tree().get_root().get_node("Game/AnimationPlayer").get_current_animation_position()
	if (time > 0 and time < 90) || (time > 180 and time < 240):
		return self.is_in_group("PLANTS")
	else:
		return not self.is_in_group("PLANTS")

func get_enemy():
		var bodies = $Range.get_overlapping_areas()
		var enemies = []
		var target = null
		
		for body in bodies:
			if body.is_in_group("Enemy"):
				enemies.append(body)
		if enemies.size() == 0:
			return null
		match targetting:
			"nearest":
				target = enemies[0]
				for body in enemies:
					if (self.global_position - body.global_position).length() < (self.global_position - target.global_position).length():
						target = body 
				
			"furthest":
				target = enemies[0]
				for body in enemies:
					if (self.global_position - body.global_position).length() > (self.global_position - target.global_position).length():
						target = body
			"strongest":
				target = enemies[0]
				for body in enemies:
					if target.get_parent().health <= body.get_parent().health:
						if body.get_parent().get_offset() > target.get_parent().get_offset():
							target = body
			"weakest":
				target = enemies[0]
				for body in enemies:
					if target.get_parent().health > body.get_parent().health:
						if body.get_parent().get_offset() > target.get_parent().get_offset():
							target = body
		return target


func _on_AtkCD_timeout():
	self.canFire = true


func _on_Tower_mouse_entered():
	$Range.visible = true


func _on_Tower_mouse_exited():
	$Range.visible = false
