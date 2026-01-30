extends CharacterBody2D

var caminar = true

func _physics_process(delta):
	
	if is_on_wall():
		$AnimatedSprite2D.flip_h = not $AnimatedSprite2D.flip_h
		caminar = not caminar
	
	if caminar == true:
		velocity.x = 50
	else:
		velocity.x = -50
		
	move_and_slide()






func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("jugador"):
		get_tree().reload_current_scene()
