extends AnimatedSprite2D

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("jugador"):
		ConteoDeEmpanadas.empanadas +=1
		print(ConteoDeEmpanadas.empanadas)
		queue_free()
