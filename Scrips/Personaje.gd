extends CharacterBody2D

var  speed = 120
var gravedad = 15
var jump = -250


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("a"):
		print ("a")

	if Input.is_action_pressed("s"):
		print ("s")

	if Input.is_action_pressed("d"):
		print ("d")

	if Input.is_action_pressed("w"):
		print ("w")
