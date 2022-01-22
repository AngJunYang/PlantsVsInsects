extends PathFollow2D

class_name Enemy

# How fast the enemy moves
export var speed = 5.0
# How far the enemy is from the origin
var displacement = 0.0
# How many hits the enemy can take
export var health = 5; 
var currenthealth
# How much damage the enemy deals when it reaches the home
export var damage = 1;

export var gold = 1;

# Called when the node enters the scene tree for the first time.
func _ready():
	set_offset(displacement)	
	currenthealth = health
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	displacement += speed
	set_offset(displacement)
	if self.unit_offset >= 1.0:
		self.queue_free()

	
func damage(amt):
	currenthealth -= amt
	$HP.hp_update(health,currenthealth)
	if currenthealth <= 0:
		Globals.cash += gold
		call_deferred("queue_free")
	
