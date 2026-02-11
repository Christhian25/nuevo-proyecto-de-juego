extends Node2D




func _on_puerta_area_entered(area: Area2D) -> void:
	if area.is_in_group("jugador") and NumeroDePerlas.perlas == 4:
		NumeroDePerlas.cubo = false
		NumeroDePerlas.perlas = 0
		NumeroDePerlas.rsp1 = false
		NumeroDePerlas.rsp2 = false
		get_tree().change_scene_to_file("res://Christhian/escenas/nv_2.tscn")
