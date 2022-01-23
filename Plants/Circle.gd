extends Node2D



func _draw():
	draw_arc(self.position,get_parent().attack_range, 0, 2 * PI, 100, Color.black)
