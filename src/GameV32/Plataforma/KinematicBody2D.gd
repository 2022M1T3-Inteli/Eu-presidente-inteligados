extends KinematicBody2D
const up = Vector2(0, -1) #Essa constante aqui serve para definir onde está o chão
const gravidade = 23 #Força da gravidade
const velocidade = 325 #Velocidade do personagem
const jump_force = -600 #Força do pulo do personagem

var motion = Vector2() #Vector2 é um tipo que aceita dois números do tipo float. Usado sempre que falamos de movimentação... pq é basicamente o X e o Y
var audio = 1
var tempo = 0
var perdeu = false


func _ready():
	$AnimationPlayer.play("idleRight")
	Global.colidiu = 0

func _physics_process(delta):
	if Global.colidiu == 1:
		motion.y = 0
		motion.x = 0
	else:
		motion.y+= gravidade #aumento gradual da gravidade enquanto não há contato com o solo
	
	
	if Input.is_action_pressed("ui_right") and Global.colidiu == 0: #movimentaçãoo para a direita
		motion.x = velocidade
		$AnimationPlayer.play("walk_right")
	elif Input.is_action_pressed("ui_left") and Global.colidiu == 0: #movimentação para a esquerda
		motion.x = -velocidade
		$AnimationPlayer.play("walk_left")
	else:
		motion.x = 0  #para o personagem

	if Input.is_action_just_released("ui_left"):
		$AnimationPlayer.play("idleLeft")
	if Input.is_action_just_released("ui_right"):
		$AnimationPlayer.play("idleRight")

	if is_on_floor(): #Verifica se o avatar está em contato com o chão
		if Input.is_action_pressed("ui_up") and Global.colidiu == 0:
			motion.y = jump_force
			$AudioStreamPlayer2D.stream = load("res://audio/jump_01.wav")
			$AudioStreamPlayer2D.play()
	motion = move_and_slide(motion, up) #Função que move e mantem movendo o objeto enquanto o jogador aperta o botão / Colocando que motion é igual a essa função ele vai ta zerando a gravidade toda vez que essa função for chamada
	
	if motion.y >= 2000:
		$game_over.play()
		$Sprite.hide()

	if motion.y >= 4000:
		get_tree().change_scene("res://mundo-aberto.tscn")
		
	#if motion.y>= 2000
		#Label de game over, retornando para a cena principal depois
	tempo += delta 
	
	for index in get_slide_count():
		var collision = get_slide_collision(index)
		if collision.collider.name.begins_with("Kinem"): #se colidir com o foguete
			Global.colidiu = 1
			perderJogo()

func perderJogo():
	$game_over.play()
	$explosao.show()
	yield(get_tree().create_timer(1.5), "timeout")
	get_tree().change_scene("res://mundo-aberto.tscn")






