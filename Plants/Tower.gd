extends Node2D

# How far the tower can fire
export (float) var attack_range = 64.0;
# How fast the tower can fire
export (float) var attack_speed = 1.0;
# How much the tower costs to build
export (int) var cost = 10;

func _ready():
	$Range/CollisionShape2D.shape.radius = attack_range
	pass # Replace with function body.

func _process(delta):
	pass
