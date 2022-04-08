extends KinematicBody2D


func _physics_process(delta):
	var vetor_entrada=Vector2.ZERO
	if Input.is_action_pressed("ui_down"):
		vetor_entrada.y += 2
		rotation_degrees = 90
	if Input.is_action_pressed("ui_up"):
		vetor_entrada.y -= 2
		rotation_degrees = -90
	if Input.is_action_pressed("ui_left"):
		vetor_entrada.x -= 2
		rotation_degrees = 180
	if Input.is_action_pressed("ui_right"):
		vetor_entrada.x += 2
		rotation_degrees = 0
		
	move_and_slide(vetor_entrada*160)
