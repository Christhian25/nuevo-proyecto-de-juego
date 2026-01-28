extends Camera2D
var velocidad = 200
var posicion_x = position.x
var posicion_y = position.y
var estado = 0 # 0 = derecha, 1 = arriba, 2 = izquierda, 3 = abajo

func derecha(delta):
	if position.x < 1500:
		position.x += velocidad * delta
	else:
		position.x = 1500
		estado = 1

func arriba(delta):
	if position.y > -100:
		position.y -= velocidad * delta
	else:
		position.y = -100
		estado = 2
		
func izquierda(delta):
	if position.x > posicion_x:
		position.x -= velocidad * delta
	else: 
		position.x = posicion_x
		estado = 3
		
func abajo(delta):
	if position.y < posicion_y:
		position.y += velocidad * delta
	else:
		position.y = posicion_y
		estado = 0


func _process(delta):
	match estado:
		0: derecha(delta)
		1: arriba(delta)
		2: izquierda(delta)
		3: abajo(delta)
