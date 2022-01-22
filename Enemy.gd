extends PathFollow2D

class_name Enemy

# How fast the enemy moves
export (float) var speed = 5.0
# How far the enemy is from the origin
var displacement = 0.0
# How many hits the enemy can take
export (int) var health = 5; 
# How much damage the enemy deals when it reaches the home
export (int) var damage = 1;

# Called when the node enters the scene tree for the first time.
func _ready():
	set_offset(displacement)	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	displacement += speed
	set_offset(displacement)
	pass
