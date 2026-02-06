extends CanvasLayer

func _physics_process(delta: float) -> void:
	$conteo_corazon.text = str(ConteoDeEmpanadas.empanadas)
	$conteo_perlas.text = str(ConteoDePerlas.perlas)
