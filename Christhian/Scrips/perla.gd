extends Sprite2D





func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("jugador"):
		NumeroDePerlas.perlas += 1
		print(NumeroDePerlas.perlas)
		queue_free()
