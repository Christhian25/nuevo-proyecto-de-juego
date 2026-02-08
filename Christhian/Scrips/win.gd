extends Node2D




func _on_puerta_area_entered(area: Area2D) -> void:
	if area.is_in_group("jugador") and NumeroDePerlas.perlas == 3:
		get_tree().change_scene_to_file("res://Christhian/escenas/win.tscn")
