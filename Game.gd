extends Node2D

onready var cycle = $AnimationPlayer
var waves = preload("res://Waves.gd").new()

export (int) var hp = 100;
export (int) var money = 100;
var time = 0;
var wave_id = 0;
# How long before the next wave spawns
var delay = 3.0
var enemies_left = 0

var max_level = 14

# Called when the node enters the scene tree for the first time.
func _ready():
	cycle.playback_speed = 8.0
	cycle.play("day_and_night")
	# Connect the UI elements
	
	for i in get_tree().get_nodes_in_group("build_buttons"):
		i.connect("pressed", self, "initiate_build_mode", [i.get_name()])
	
	# Start the game
	start_next_wave()
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time = cycle.get_current_animation_length()
	$UI/Cash/Label.text = str(Globals.cash)
	if build_mode:
		update_tower_preview()
		

func _unhandled_input(event):
	if event.is_action_released("ui_cancel") and build_mode:
		cancel_build_mode()
	elif event.is_action_released("ui_accept") and build_mode:
		verify_and_build()
		cancel_build_mode()
	
##########
# Building Logic
##########

var build_type = ""
var build_mode = false
var build_valid = false
var build_location
var select_mode = false

func initiate_build_mode(tower_type):
	build_mode = true
	build_type = tower_type
	get_node("UI").set_tower_preview(tower_type, get_global_mouse_position())
	
func update_tower_preview():
	var mouse_position = get_global_mouse_position()
	var current_tile = mouse_position
	var tower = get_node("UI/TowerPreview/DragTower")
	build_valid = true
	# Check collision
	for area in tower.get_overlapping_areas():
		print(area.get_name())
		if area.get_name() == "Range":
			continue 
		else:
			build_valid = false
		
	if build_valid and Globals.cash >= tower.cost:
		$UI.update_tower_preview(mouse_position, "ad54ff3c")
		build_location = mouse_position
	else:
		$UI.update_tower_preview(mouse_position, "adff4545")


func cancel_build_mode():
	build_mode = false
	build_valid = false
	get_node("UI/TowerPreview").queue_free()
	
func verify_and_build():
	# Check collision with other towers
	for tower in $Towers.get_children():
		if tower.position == build_location:
			build_valid = false
			break
	if build_valid:
		# ToDo: Check if player has enough money
		var new_tower = load("res://Plants/" + build_type + ".tscn").instance()
		new_tower.position = build_location
		$Towers.add_child(new_tower, true)
		Globals.cash -= new_tower.cost
	pass

############
# Wave logic
############

func start_next_wave():
	var wave_data = waves.get_wave(wave_id)
	yield(get_tree().create_timer(delay), "timeout")
	enemies_left = wave_data.size()
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
	if wave_id == max_level:
		get_tree().quit()
	start_next_wave()
	
##########
# Hp Logic
##########

func _on_Home_area_entered(area):
	if not "damage" in area.get_parent():
		return
	hp -= area.get_parent().damage
	if hp < 0:
		get_tree().quit()
	$UI/Health._update(hp)
