extends KinematicBody2D

var posicao_vertical_inicial = Global.posicao_vertical
var posicao_horizontal_inicial = Global.posicao_horizontal
onready var animationPlayer = $AnimationPlayer



func _physics_process(delta):
	var vetor_entrada=Vector2.ZERO
		
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
		
	move_and_slide(vetor_entrada*160)
	
