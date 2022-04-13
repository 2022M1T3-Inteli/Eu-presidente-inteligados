extends KinematicBody2D

onready var animationPlayer = $AnimationPlayer



func _physics_process(_delta):
	var vetor_entrada=Vector2.ZERO

	#Movimentação do personagem / animação do personagem
	if Input.is_action_pressed("ui_down") and vetor_entrada.x == 0:
		animationPlayer.play("walk_down")
		vetor_entrada.y += 1
	if Input.is_action_pressed("ui_up") and vetor_entrada.x == 0:
		animationPlayer.play("walk")
		vetor_entrada.y -= 1
	if Input.is_action_pressed("ui_left") and vetor_entrada.y == 0:
		animationPlayer.play("walk_left")
		vetor_entrada.x -= 1
	if Input.is_action_pressed("ui_right") and vetor_entrada.y == 0:
		animationPlayer.play("walk_right")
		vetor_entrada.x += 1
	

	#Parar o boneco ultima posição da animação
	if Input.is_action_just_released("ui_left"):
		animationPlayer.play("idleLeft")
		vetor_entrada.x -= 1
	if Input.is_action_just_released("ui_right"):
		animationPlayer.play("idleRight")
		vetor_entrada.x += 1
	if Input.is_action_just_released("ui_down"):
		animationPlayer.play("idleDown")
		vetor_entrada.y += 1
	if Input.is_action_just_released("ui_up"):
		animationPlayer.play("idleTop")
		vetor_entrada.y -= 1
		
	#Fazer com que o personagem fique estático ao ativar a text box
	if Global.textbox == 0:
		move_and_slide(vetor_entrada*200)
	else:
		move_and_slide(vetor_entrada*0)
		animationPlayer.play("idleTop")
