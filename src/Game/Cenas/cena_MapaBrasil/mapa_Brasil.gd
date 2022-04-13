extends Node2D

var sul = 0

func _ready(): #muta o jogo
	if Global.mudo == 1:
		$AudioStreamPlayer2D.stop()
	if Global.mudo == 0:
		$AudioStreamPlayer2D.play()
	Global.posicao_vertical += 42 #modifica a posição personagem no mundo aberto

#Centro
func _on_centro_body_entered(_body):
	$centro/centro.frame = 1 #colore a região central
	$mapas_text.text = "Região Centro-Oeste bloqueada"
	$MenuItem2.modulate = Color.orange #colore a label
func _on_centro_body_exited(_body):
	$centro/centro.frame = 0 #descolore essa região
	$mapas_text.text = "Use as setas para viajar pelo Brasil!"

#Nordeste
func _on_Nordeste_body_entered(_body):
	$Nordeste/nordeste.frame = 1 #colore a região nordeste
	$mapas_text.text = "Região Nordeste bloqueada"
	$MenuItem2.modulate = Color.red #colore a label
func _on_Nordeste_body_exited(_body):
	$Nordeste/nordeste.frame = 0 #descolore essa região
	$mapas_text.text = "Use as setas para viajar pelo Brasil!"

#Sudeste
func _on_Sudeste_body_entered(_body):
	$Sudeste/sudeste.frame = 1 #colore a região sudeste
	$mapas_text.text = "Região Sudeste bloqueada"
	$MenuItem2.modulate = Color.yellow #colore a label
func _on_Sudeste_body_exited(_body):
	$Sudeste/sudeste.frame = 0 #descolore essa região
	$mapas_text.text = "Use as setas para viajar pelo Brasil!"

#Sul
func _on_Sul_body_entered(_body):
	$Sul/sul.frame = 1 #colore a região sul
	$mapas_text.text = "Pressione barra de espaço para jogar!"
	$MenuItem2.modulate = Color.cyan #colore a label
	sul = 1
func _on_Sul_body_exited(_body):
	$Sul/sul.frame = 0 #descolore essa região
	$mapas_text.text = "Use as setas para viajar pelo Brasil!"
	sul = 0

#Norte
func _on_Norte_body_entered(_body):
	$Norte/norte.frame = 1 #colore a região norte
	$mapas_text.text = "Região Norte bloqueada"
	$MenuItem2.modulate = Color.chartreuse #colore a label
func _on_Norte_body_exited(_body):
	$Norte/norte.frame = 0 #descolore essa região
	$mapas_text.text = "Use as setas para viajar pelo Brasil!"

func _process(_delta):
	if Input.is_action_pressed("ui_accept") and $Sul/sul.frame == 1:
			if Global.reiniciar == 0: #se ele começou o jogo agora, vai diretamente para o mundo aberto
				get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
			if Global.reiniciar == 1: #comando que só é atendido quando o personagem apresenta algum progresso na campanha
				if Global.subiuRua == 0:
					Global.posicao_vertical -= 42 #envia o personagem para a mesma posição do mundo aberto
					get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
				else: #caso ele tenha saído do mapa subindo a rua do mundo aberto, envia o personagem para baixo da posição de quando entrou
					get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
	if $KinematicBody2D.position.x > 1300: #retorna o avião para o início da tela caso ele esteja no final horizontal
		$KinematicBody2D.position.x = -100
	if $KinematicBody2D.position.x < -100: #retorna o avião para o início da tela caso ele esteja no final horizontal
		$KinematicBody2D.position.x = 1300

	if $KinematicBody2D.position.y < -100: #retorna o avião para o início da tela caso ele esteja no final vertical
		$KinematicBody2D.position.y = 790
	if $KinematicBody2D.position.y > 790: #retorna o avião para o início da tela caso ele esteja no final vertical
		$KinematicBody2D.position.y = -100
