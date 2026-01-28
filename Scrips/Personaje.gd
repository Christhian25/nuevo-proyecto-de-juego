extends CharacterBody2D

var  speed = 120
var gravedad = 15
var jump = -350


func _physics_process(delta: float) -> void:
	# 1. Gravedad (Siempre se aplica)
	if not is_on_floor():
		velocity.y += gravedad
	
	# 2. Manejo de Salto
	if Input.is_action_just_pressed("w") and is_on_floor():
		velocity.y = jump

	# 3. Dirección y Movimiento Horizontal
	var direction = Input.get_axis("a", "d")
	if direction:
		velocity.x = direction * speed
		$AnimatedSprite2D.flip_h = (direction < 0)
	else:
		velocity.x = move_toward(velocity.x, 0, 20)

	# 4. CONTROL DE ANIMACIONES (La jerarquía mágica)
	if not is_on_floor():
		if velocity.y < 0:
			$AnimatedSprite2D.play("jump") # Subiendo
		else:
			$AnimatedSprite2D.play("fall") # Bajando
	elif direction != 0:
		$AnimatedSprite2D.play("walk") # Si está en el suelo y se mueve
	else:
		$AnimatedSprite2D.play("idle") # Si está en el suelo y quieto

	move_and_slide()
