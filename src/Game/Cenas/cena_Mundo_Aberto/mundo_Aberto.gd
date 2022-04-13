extends Node2D

var tempo = 0

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE) #Torna o mouse visivel no mundo aberto
	$Agradecimento.position.x = 1500 #apresenta a sprite com os desenvolvedores
	Global.reiniciar = 1
	if Global.mudo == 1:
		$theme_song.stop() #Faz o áudio tocar
	if Global.mudo == 0:
		$theme_song.play() #Faz áudio parar
	Global.subiuRua = 0 


func _process(delta):
	$Alerta.play() #mostra a animação do ponto de exclamação

	if Global.index == 1:
		$Alerta.position.x = 823 #modifica a posição x da exclamação de acordo com a pergunta
		$Alerta.position.y = 198#modifica a posição y da exclamação de acordo com a pergunta
		$NPC9.position.x = 839 #modifica a posição x do npc de acordo com a pergunta
		$NPC9.position.y = 244#modifica a posição y do npc de acordo com a pergunta
	if Global.index == 2:
		$Alerta.position.x = 465#modifica a posição x da exclamação de acordo com a pergunta
		$Alerta.position.y = 410#modifica a posição y da exclamação de acordo com a pergunta
		$NPC9.position.x = 485#modifica a posição x do npc de acordo com a pergunta
		$NPC9.position.y = 458#modifica a posição y do npc de acordo com a pergunta
	if Global.index == 3:
		$Alerta.position.x = 502 #modifica a posição x da exclamação de acordo com a pergunta
		$Alerta.position.y = -149#modifica a posição y da exclamação de acordo com a pergunta
		$NPC9.position.x = 550#modifica a posição x do npc de acordo com a pergunta
		$NPC9.position.y = -177#modifica a posição y do npc de acordo com a pergunta
		
		#Animação de fogo nas árvores
		$Fogopai.show()
		tempo += 3 * delta
		var inteiro = int(float(tempo)) #transforma o valor do tempo em inteiro para fazer a divisão
		if inteiro % 2 == 0: #determina em 50% do tempo para a sprite ficar flipada
			$Fogopai.flip_h = true
			$Fogopai/Fogo1.flip_h = true
			$Fogopai/Fogo2.flip_h = true
			$Fogopai/Fogo3.flip_h = true
			$Fogopai/Fogo4.flip_h = true
			$Fogopai/Fogo5.flip_h = true
			$Fogopai/Fogo6.flip_h = true
			$Fogopai/Fogo7.flip_h = true
			$Fogopai/Fogo8.flip_h = true
			$Fogopai/Fogo9.flip_h = true
			$Fogopai/Fogo10.flip_h = true
			$Fogopai/Fogo11.flip_h = true
			$Fogopai/Fogo12.flip_h = true
		else: #determina os outros 50% do tempo para a sprite ficar normal
			$Fogopai.flip_h = false
			$Fogopai/Fogo1.flip_h = false
			$Fogopai/Fogo2.flip_h = false
			$Fogopai/Fogo3.flip_h = false
			$Fogopai/Fogo4.flip_h = false
			$Fogopai/Fogo5.flip_h = false
			$Fogopai/Fogo6.flip_h = false
			$Fogopai/Fogo7.flip_h = false
			$Fogopai/Fogo8.flip_h = false
			$Fogopai/Fogo9.flip_h = false
			$Fogopai/Fogo10.flip_h = false
			$Fogopai/Fogo11.flip_h = false
			$Fogopai/Fogo12.flip_h = false
			
	
	if Global.index == 4:
		$Fogopai.hide() #Esconde a animação do fogo
		$Alerta.position.x = 745 #Altera a posição do alerta vermelho no eixo x
		$Alerta.position.y = 540 #Altera a posição do alerta vermelho no eixo y
		$NPC9.position.x = 681 #Altera a posição do npc léo no eixo x
		$NPC9.position.y = 530 #Altera a posição do npc léo no eixo y
	if Global.index == 5:
		$Alerta.position.x = 480
		$Alerta.position.y = -15
		$NPC9.position.x = 569
		$NPC9.position.y = 7
	elif Global.index > 5:
		$Alerta.hide() #esconde o alerta caso as perguntas acabem
		$NPC9.position.x = 591
		$NPC9.position.y = -182
		if Global.indexPrefeitura != 9 and Global.indexEscola != 7 and Global.indexMercado != 11:
			$Agradecimento.position.x = 806
			$Agradecimento.position.y = -15
			$NPC.position.x = 1500
			$NPC1.position.x = 1500
			$NPC4.position.x = 1500
			$NPC8.position.x = 1500
			$NPC2e3.position.x = 1500
			
	if Global.acertouMercado == 1:
		$mercado/Label.hide()
		$Supermercado.show()
		$TileSupermercado.show()
			
	if Global.contador_easter_egg == 9:
		$Caramelo.show() #apresenta o easter egg


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

func _on_Area2D2_body_entered(_body):
	if Global.indexEscola  == 7: #entra na escola se ainda houver perguntas
		get_tree().change_scene("res://Cenas/Escola.tscn")
		Global.indexMundoAberto = Global.index #salva o index antes de passar pela porta
		Global.index = Global.indexEscola #modifica o index pelo armazenado na escola

func _on_Area2D4_body_entered(_body):
	if Global.indexPrefeitura == 9: #entra na escola se ainda houver perguntas
		get_tree().change_scene("res://Cenas/Prefeitura.tscn")
		Global.indexMundoAberto = Global.index #salva o index antes de passar pela porta
		Global.index = Global.indexPrefeitura #modifica o index pelo armazenado na escola

func _on_mercado_body_entered(_body):
	if Global.indexMercado ==  11: #entra na escola se ainda houver perguntas
		get_tree().change_scene("res://Cenas/Mercado.tscn")
		Global.indexMundoAberto = Global.index #salva o index antes de passar pela porta
		Global.index = Global.indexMercado #modifica o index pelo armazenado na escola


#Trocar para cena do minigame
func _on_portaminigame_body_entered(_body):
	get_tree().change_scene("res://Cenas/cena_Minigame/minigame1.tscn")


#trocar para quiz
func _on_Area2D_body_entered(_body):
	if Global.index == 0: #checa se você esta nesta pergunta
		get_tree().change_scene("res://Cenas/cena_Quiz/cena_Quiz.tscn")

func _on_Quiz2_body_entered(_body):
	if Global.index == 1: #checa se você esta nesta pergunta
		get_tree().change_scene("res://Cenas/cena_Quiz/cena_Quiz.tscn")

func _on_Quiz3_body_entered(_body):
	if Global.index == 2: #checa se você esta nesta pergunta
		get_tree().change_scene("res://Cenas/cena_Quiz/cena_Quiz.tscn")

func _on_Quiz4_body_entered(_body):
	if Global.index == 3: #checa se você esta nesta pergunta
		get_tree().change_scene("res://Cenas/cena_Quiz/cena_Quiz.tscn")

func _on_Quiz5_body_entered(_body):
	if Global.index == 4: #checa se você esta nesta pergunta
		get_tree().change_scene("res://Cenas/cena_Quiz/cena_Quiz.tscn")

func _on_Quiz6_body_entered(_body):
	if Global.index == 5: #checa se você esta nesta pergunta
		get_tree().change_scene("res://Cenas/cena_Quiz/cena_Quiz.tscn")

func _on_mapa_body_entered(_body):
	Global.subiuRua = 1 #checa se você esta nesta pergunta
	get_tree().change_scene("res://Cenas/cena_MapaBrasil/mapa_Brasil.tscn")


