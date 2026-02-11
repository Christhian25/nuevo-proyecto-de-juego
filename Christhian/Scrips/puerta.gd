extends Area2D



func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("jugador") and NumeroDePerlas.perlas == 7:
		NumeroDePerlas.cubo = false
		NumeroDePerlas.perlas = 0
		NumeroDePerlas.rsp1 = false
		NumeroDePerlas.rsp2 = false
		NumeroDePerlas.rsp3 = false
		NumeroDePerlas.cubo2 = false
		get_tree().change_scene_to_file("res://Christhian/escenas/win.tscn")
