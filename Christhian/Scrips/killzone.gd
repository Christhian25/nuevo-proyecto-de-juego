extends Area2D




func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("jugador"):
		NumeroDePerlas.perlas = 0
		NumeroDeEmpanadas.empanadas -= 1
		NumeroDePerlas.cubo = false
		NumeroDePerlas.rsp1 = false
		NumeroDePerlas.rsp2 = false
		get_tree().reload_current_scene()
