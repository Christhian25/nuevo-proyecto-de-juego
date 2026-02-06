extends CanvasLayer

func _physics_process(delta: float) -> void:
	$conteo_perlas.text = str(NumeroDePerlas.perlas)
	$conteo_corazon.text = str(NumeroDeEmpanadas.empanadas)
