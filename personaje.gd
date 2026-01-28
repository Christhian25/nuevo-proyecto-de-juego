class_name Personaje
extends CharacterBody2D

var velocidad = 100

func mover(delta):
	position.x += velocidad * delta 
func detener():
	if position.x > 300:
		print("llegue a mi destino") 

func _process(delta):
	mover(delta)
	detener()
