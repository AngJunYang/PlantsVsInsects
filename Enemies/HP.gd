extends Node2D

func _ready():
	self.modulate.a = 0

func _physics_process(delta):
	self.rotation = 0
	self.global_rotation = 0
	$Bar.rect_rotation = 0

func hp_update(maxHp, currentHp):
	$Bar.max_value = maxHp
	$Bar.value = currentHp
	$Tween.interpolate_property(self,"modulate",Color(1, 1, 1, 1), Color(1, 1, 1, 0), 1.0, 
		Tween.TRANS_LINEAR, Tween.EASE_IN)
	$Tween.start()
