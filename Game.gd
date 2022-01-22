extends Node2D

onready var cycle = $AnimationPlayer
var waves = preload("res://Waves.gd").new()

export (int) var hp = 20;
export (int) var money = 100;
var time = 0;
var wave_id = 0;
# How long before the next wave spawns
var delay = 3.0
var enemies_left = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	cycle.playback_speed = 16.0
	cycle.play("day_and_night")
	start_next_wave()
	pass # Replace with function body.

func start_next_wave():
	var wave_data = waves.get_wave(wave_id)
	yield(get_tree().create_timer(delay), "timeout")
	enemies_left = wave_data.size()
	print(enemies_left)
	spawn_wave(wave_data)
	wave_id += 1
	
func spawn_wave(wave_data):
	for i in wave_data:
		# i[0] = path number
		# i[1] = enemy type
		# i[2] = delay
		var enemy = load("res://Enemies/" + i[1] + ".tscn").instance()
		get_node(i[0]).add_child(enemy)
		yield(get_tree().create_timer(i[2]), "timeout")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time = cycle.get_current_animation_length()


func _on_Home_area_entered(area):
	hp -= area.get_parent().damage
	$CanvasLayer/Health._update(hp)
