extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var target
var speed = 5
export var dmg = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	self.position += Vector2(1, 0).rotated(self.rotation) * speed * delta
	
func start_timer(time):
	$Lifetime.start(time)	

func _on_Lifetime_timeout():
	self.queue_free()

func _on_Node2D_area_entered(body):
	print(body)
	if body.get_parent().is_in_group("Enemy"):
		body.get_parent().damage(dmg)
		self.queue_free()
