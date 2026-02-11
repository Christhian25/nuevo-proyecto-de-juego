extends Node2D

func _physics_process(delta: float) -> void:
	if NumeroDePerlas.cubo == false:
		$objetos/Sprite2D.position.x = -1000
	else:
		$objetos/Sprite2D.position.x = 1168
