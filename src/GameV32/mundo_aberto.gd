extends Node2D

func _ready():
	Global.reiniciar = 1

func _process(delta): 
	$Alerta.play() #mostra a animação do ponto de exclamação
	if Global.index == 1:
		$Alerta.position.x = 823 #modifica a posição da exclamação de acordo com a pergunta
		$Alerta.position.y = 198
		$NPC9.position.x = 839 #modifica a posição do npc de acordo com a pergunta
		$NPC9.position.y = 244
	if Global.index == 2:
		$Alerta.position.x = 465
		$Alerta.position.y = 410
		$NPC9.position.x = 485
		$NPC9.position.y = 458
	if Global.index == 3:
		$Alerta.position.x = 502
		$Alerta.position.y = -149
		$NPC9.position.x = 550
		$NPC9.position.y = -177
	if Global.index == 4:
		$Alerta.position.x = 745
		$Alerta.position.y = 540
		$NPC9.position.x = 681
		$NPC9.position.y = 530
	if Global.index == 5:
		$Alerta.position.x = 480
		$Alerta.position.y = -15
		$NPC9.position.x = 569
		$NPC9.position.y = 7
	elif Global.index > 5:
		$Alerta.hide() #esconde o alerta caso as perguntas acabem
		$NPC9.hide() #esconde o npc caso as perguntas acabem
	if Global.contador_easter_egg == 5:
		$Caramelo.show()


	$AlertaAmarelo.play()
	$AlertaAmarelo2.play()
	$AlertaAmarelo3.play()
	$AlertaAzul.play()

	if Global.indexPrefeitura != 9: #se ainda existirem perguntas na prefeitura sem resposta
		$AlertaAmarelo3.hide()
	else:
		$AlertaAmarelo3.show()

	if Global.indexEscola != 7: #se ainda existirem perguntas na escola sem resposta
		$AlertaAmarelo2.hide()
	else:
		$AlertaAmarelo2.show()

	if Global.indexMercado != 11: #se ainda existirem perguntas no mercado sem resposta
		$AlertaAmarelo.hide()
	else:
		$AlertaAmarelo.show()

func _on_Area2D2_body_entered(body):
	if Global.indexEscola  == 7: #entra na escola se ainda houver perguntas
		get_tree().change_scene("res://Escola.tscn")
		Global.indexMundoAberto = Global.index #salva o index antes de passar pela porta
		Global.index = Global.indexEscola #modifica o index pelo armazenado na escola

func _on_Area2D4_body_entered(body):
	if Global.indexPrefeitura == 9: #entra na escola se ainda houver perguntas
		get_tree().change_scene("res://Prefeitura.tscn")
		Global.indexMundoAberto = Global.index #salva o index antes de passar pela porta
		Global.index = Global.indexPrefeitura #modifica o index pelo armazenado na escola

func _on_mercado_body_entered(body):
	if Global.indexMercado ==  11: #entra na escola se ainda houver perguntas
		get_tree().change_scene("res://Mercado.tscn")
		Global.indexMundoAberto = Global.index #salva o index antes de passar pela porta
		Global.index = Global.indexMercado #modifica o index pelo armazenado na escola


func _on_portaminigame_body_entered(body):
	get_tree().change_scene("res://Plataforma/minigame1.tscn")

func _on_Area2D_body_entered(body):
	if Global.index == 0:
		get_tree().change_scene("res://cenas/quiz.tscn")

func _on_Quiz2_body_entered(body):
	if Global.index == 1:
		get_tree().change_scene("res://cenas/quiz.tscn")

func _on_Quiz3_body_entered(body):
	if Global.index == 2:
		get_tree().change_scene("res://cenas/quiz.tscn")

func _on_Quiz4_body_entered(body):
	if Global.index == 3:
		get_tree().change_scene("res://cenas/quiz.tscn")

func _on_Quiz5_body_entered(body):
	if Global.index == 4:
		get_tree().change_scene("res://cenas/quiz.tscn")

func _on_Quiz6_body_entered(body):
	if Global.index == 5:
		get_tree().change_scene("res://cenas/quiz.tscn")

func _on_mapa_body_entered(body):
	get_tree().change_scene("res://selecionar_fase/mapa_brasil.tscn")
