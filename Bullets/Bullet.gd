extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var target
var speed = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	self.position += Vector2(1, 0).rotated(self.rotation) * speed * delta
	
func start_timer(time):
	$Lifetime.start(time)	

func _on_Lifetime_timeout():
	self.queue_free()


func _on_Node2D_body_entered(body):
	if body.is_in_group("enemy"):
		pass
	pass # Replace with function body.
