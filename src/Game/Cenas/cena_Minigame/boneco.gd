extends KinematicBody2D
const up = Vector2(0, -1) #Essa constante aqui serve para definir onde está o chão
const gravidade = 20 #Força da gravidade
const velocidade = 220 #Velocidade do personagem
const forca_pulo = -600 #Força do pulo do personagem

var motion = Vector2() #Vector2 é um tipo que aceita dois números do tipo float. Usado sempre que falamos de movimentação... pq é basicamente o X e o Y
var audio = 1
var tempo = 0
var perdeu = false


func _ready():
	$AnimationPlayer.play("idleRight")
	Global.colidiu = 0
	Global.posicao_vertical += 42

func _physics_process(delta):
	if Global.colidiu == 1:
		motion.y = 0
		motion.x = 0
	else:
		motion.y+= gravidade #aumento gradual da gravidade enquanto não há contato com o solo
	
	
	if Input.is_action_pressed("ui_right") and Global.colidiu == 0: #movimentaçãoo para a direita
		motion.x = velocidade
		if is_on_floor():
			$AnimationPlayer.play("walk_right")
		else:
			$AnimationPlayer.play("ar_direita")
	elif Input.is_action_pressed("ui_left") and Global.colidiu == 0: #movimentação para a esquerda
		motion.x = -velocidade
		if is_on_floor():
			$AnimationPlayer.play("walk_left")
		else:
			$AnimationPlayer.play("ar_esquerda")
	else:
		motion.x = 0  #para o personagem

	if Input.is_action_just_released("ui_left"):
		$AnimationPlayer.play("idleLeft")
	if Input.is_action_just_released("ui_right"):
		$AnimationPlayer.play("idleRight")

	if is_on_floor(): #Verifica se o avatar está em contato com o chão
		if Input.is_action_pressed("ui_up") or Input.is_action_pressed("ui_accept") and Global.colidiu == 0:
			motion.y = forca_pulo
			$AudioStreamPlayer2D.stream = load("res://Audio/jump_01.wav")
			if Global.mudo == 0:
				$AudioStreamPlayer2D.play()
	else:
		if Input.is_action_pressed("ui_down"):
			motion.y += 8
	motion = move_and_slide(motion, up) #Função que move e mantem movendo o objeto enquanto o jogador aperta o botão / Colocando que motion é igual a essa função ele vai ta zerando a gravidade toda vez que essa função for chamada
	
	if motion.y >= 2000:
		$game_over.play() #Sprite de game over
		$Sprite.hide() #esconde o personagem para não interferir na sprite
		

	if motion.y >= 4000:
		get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn") #quando o personagem cai por muito tempo, encerra o jogo
		
		
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
	get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")






