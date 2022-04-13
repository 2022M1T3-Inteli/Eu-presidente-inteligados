extends KinematicBody2D

var posicao_vertical_inicial = Global.posicao_vertical
var posicao_horizontal_inicial = Global.posicao_horizontal
onready var animationPlayer = $AnimationPlayer



func _physics_process(_delta):
	var vetor_entrada=Vector2.ZERO
	Global.posicao_horizontal = self.position.x
	Global.posicao_vertical = self.position.y

	#Movimentação do personagem
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
		animationPlayer.play("idleLeft") #replica a animação de andar para a esquerda
		vetor_entrada.x -= 1
	if Input.is_action_just_released("ui_right"):
		animationPlayer.play("idleRight") #replica a animação de andar para a esquerda
		vetor_entrada.x += 1
	if Input.is_action_just_released("ui_down"):
		animationPlayer.play("idleDown") #replica a animação de andar para a direita
		vetor_entrada.y += 1
	if Input.is_action_just_released("ui_up"):
		animationPlayer.play("idleTop") #replica a animação de andar para cima
		vetor_entrada.y -= 1

	if Global.textbox == 0:
		move_and_slide(vetor_entrada*160)
	else:
		move_and_slide(vetor_entrada*0) #para o personagem quando entrar em contato com uma textbox
		animationPlayer.play("idleTop") #fixa a posição do personagem virado para cima quando iniciar um diálogo
	


func _ready():
	self.position.x = posicao_horizontal_inicial 
	self.position.y = posicao_vertical_inicial
