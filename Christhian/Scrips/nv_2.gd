extends Node2D

func _physics_process(delta: float) -> void:
	if NumeroDePerlas.cubo == false:
		$objetos/Sprite2D.position.x = -1000
	else:
		$objetos/Sprite2D.position.x = 610
	if NumeroDePerlas.cubo2 == false:
		$objetos/Sprite2D2.position.x = -1000
	else:
		$objetos/Sprite2D2.position.x = 1023
