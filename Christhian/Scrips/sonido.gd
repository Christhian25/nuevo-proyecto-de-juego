extends HSlider

# Exportamos el nombre del bus para poder reutilizar este script
# en Sliders de "Música", "Efectos", etc.
@export var nombre_bus: String = "Master"

# Guardamos el índice numérico del bus
var indice_bus: int

func _ready():
	# Obtenemos el índice del bus por su nombre
	indice_bus = AudioServer.get_bus_index(nombre_bus)
	
	# Configuración inicial del Slider
	min_value = 0.0
	max_value = 1.0
	step = 0.05
	
	# Sincronizar el slider con el volumen actual al iniciar el juego
	# db_to_linear convierte los decibelios de vuelta a 0.0 - 1.0
	value = db_to_linear(AudioServer.get_bus_volume_db(indice_bus))

# Esta función se conecta a la señal "value_changed" del Slider
func _on_value_changed(valor_lineal: float) -> void:
	# 1. Convertimos el valor lineal (0 a 1) a Decibelios
	# Godot usa una escala logarítmica para el audio
	var volumen_db = linear_to_db(valor_lineal)
	
	# 2. Aplicamos el volumen al bus
	AudioServer.set_bus_volume_db(indice_bus, volumen_db)
	
	# 3. (Opcional) Si el volumen es 0, activamos el Mute real para ahorrar recursos
	if valor_lineal < 0.01:
		AudioServer.set_bus_mute(indice_bus, true)
	else:
		AudioServer.set_bus_mute(indice_bus, false)
