
extends Camera2D

@export var target: Node2D # Arrastra a tu personaje aquí en el Inspector
@export var fall_limit: float = 1000.0 # La altura donde la cámara deja de seguir

func _process(_delta):
	if target:
		# Seguimiento horizontal siempre activo
		global_position.x = target.global_position.x
		
		# Seguimiento vertical solo si el personaje está arriba del límite
		if target.global_position.y < fall_limit:
			global_position.y = target.global_position.y
