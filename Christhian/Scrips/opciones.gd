extends Control

# Referencia al botón que quieres que esté seleccionado al inicio
@onready var boton_inicio = $VBoxContainer/Volume

func _ready():
	# Llamamos a nuestra función de configuración
	configurar_navegacion_teclado()

func configurar_navegacion_teclado():
	# 1. Aseguramos que el botón pueda recibir foco
	boton_inicio.focus_mode = Control.FOCUS_ALL
	
	# 2. Forzamos el foco en este botón inmediatamente
	# Esto hace que el teclado empiece a funcionar desde aquí
	boton_inicio.grab_focus()

# Opcional: Si ocultas y muestras el menú, llama a esto cada vez que se muestre
func _on_menu_visibility_changed():
	if visible:
		boton_inicio.grab_focus()


func _on_volume_pressed() -> void:
	get_tree().change_scene_to_file("res://Christhian/escenas/sonido.tscn")




func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Christhian/escenas/pantalla.tscn")
