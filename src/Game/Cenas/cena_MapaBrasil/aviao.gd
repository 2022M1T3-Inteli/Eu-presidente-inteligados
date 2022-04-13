extends KinematicBody2D


func _physics_process(_delta):
	var vetor_entrada=Vector2.ZERO
	if Input.is_action_pressed("ui_down"): #movimenta para baixo
		vetor_entrada.y += 2
		rotation_degrees = 90 #rotaciona a sprite do avião
	if Input.is_action_pressed("ui_up"): #movimenta para cima
		vetor_entrada.y -= 2
		rotation_degrees = -90 #rotaciona a sprite do avião
	if Input.is_action_pressed("ui_left"): #movimenta para a esquerda
		vetor_entrada.x -= 2
		rotation_degrees = 180 #rotaciona a sprite do avião
	if Input.is_action_pressed("ui_right"): #movimenta para a direita
		vetor_entrada.x += 2
		rotation_degrees = 0 #rotaciona a sprite do avião
	
		
	move_and_slide(vetor_entrada*160)
