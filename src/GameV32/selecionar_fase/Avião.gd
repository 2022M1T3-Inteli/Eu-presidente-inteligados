extends Sprite

func voar():
	var vetor_entrada=Vector2.ZERO
	if Input.is_action_pressed("ui_down"):
		vetor_entrada.y += 1
	if Input.is_action_pressed("ui_up"):
		vetor_entrada.y -= 1
	if Input.is_action_pressed("ui_left"):
		vetor_entrada.x -= 1
	if Input.is_action_pressed("ui_right"):
		vetor_entrada.x += 1
