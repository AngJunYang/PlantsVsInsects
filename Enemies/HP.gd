extends Node2D

func hp_update(maxHp, currentHp):
	$Bar.max_value = maxHp
	$Bar.value = currentHp
	$Tween.interpolate_property($TextureProgress,"modulate",Color(1, 1, 1, 1), Color(1, 1, 1, 0), 1.0, 
		Tween.TRANS_LINEAR, Tween.EASE_IN)
	$Tween.start()
