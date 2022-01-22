extends Node2D

onready var cycle = $AnimationPlayer

export (int) var hp = 20;
export (int) var money = 100;
var time = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	cycle.playback_speed = 16.0
	cycle.play("day_and_night")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	process_time(delta)
	
func process_time(delta):
	time += delta
	if time > 24.00:
		time = 0.00
	
	pass
