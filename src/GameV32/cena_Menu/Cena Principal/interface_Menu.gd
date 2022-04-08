extends Control


func _on_iniciar_Botao_pressed():
	Global.contador = 5 #variável que comanda a HUD
	Global.index = 0 #variável que comanda qual pergunta será chamada de cada vez
	Global.posicao_horizontal = 660 #variável que armazena a posição horizontal do jogador
	Global.posicao_vertical = 25 #variável que armazena a posição vertical do jogador
	Global.textbox = 0 #variável que armazena informações sobre a caixa de texto
	Global.indexMundoAberto = 0 #variável que armazena o index do mundo aberto
	Global.indexPrefeitura = 9 #variável que determina a pergunta a ser chamada na prefeitura
	Global.indexEscola = 7 #variável que determina a pergunta a ser chamada no mercad
	Global.indexMercado = 11 #variável que determina a pergunta a ser chamada no mercado
	Global.stop = 0 #variável que impede do jogador respondar a mesma pergunta diversas vezes
	Global.colidiu = 0 #variável que determina se o corpo colidiu com um foguete no minigame
	Global.venceu_minigame = 0 #variável que determina se o jogador venceu o minigame
	Global.correto = 0 #variável que armazena a informação se o jogador acertou ou não a pergunta
	Global.contador_easter_egg = 0 #variável que deterimina quando o easter egg será chamado
	get_tree().change_scene("res://selecionar_fase/mapa_brasil.tscn")

func _on_carregar_Botao_pressed():
	if Global.reiniciar == 1:
		get_tree().change_scene("res://selecionar_fase/mapa_brasil.tscn")
	

func _on_iniciar_Botao_mouse_entered():
	$MenuItem2.modulate = Color.cornflower
func _on_carregar_Botao_mouse_entered():
	$MenuItem3.modulate = Color.cornflower
func _on_sair_Botao_mouse_entered():
	$MenuItem4.modulate = Color.cornflower


func _on_iniciar_Botao_mouse_exited():
	$MenuItem2.modulate = Color.white
func _on_carregar_Botao_mouse_exited():
	$MenuItem3.modulate = Color.white
func _on_sair_Botao_mouse_exited():
	$MenuItem4.modulate = Color.white



