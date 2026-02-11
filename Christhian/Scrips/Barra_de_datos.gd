extends CanvasLayer

func _physics_process(delta: float) -> void:
	$conteo_perlas.text = str(NumeroDePerlas.perlas)
	$conteo_corazon.text = str(NumeroDeEmpanadas.empanadas)
	if NumeroDeEmpanadas.empanadas <=0:
		NumeroDeEmpanadas.empanadas = 3
		get_tree().change_scene_to_file("res://Christhian/escenas/game_over.tscn")
	
