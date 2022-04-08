#Envia as perguntas para o Panel
#Envia as perguntas para o Panel
extends Node
enum TipoPergunta { TEXTO, IMAGEM, VIDEO, AUDIO }
export(Resource) var db_perguntas
export(Color) var color_right
export(Color) var color_wrong
var buttons := []
# declarar os itens da tabela informacao_pergunta como variáveis
onready var texto_pergunta := $informacao_pergunta/texto_pergunta
onready var imagem_pergunta := $informacao_pergunta/Panel/imagem_pergunta
onready var video_pergunta := $informacao_pergunta/Panel/video_pergunta
onready var audio_pergunta := $informacao_pergunta/Panel/audio_pergunta
func _ready() -> void:
	for _button in $resposta.get_children():
		buttons.append(_button)
	Global.stop = 0
	load_quiz()
	
func _process(delta):
	if Input.is_key_pressed(KEY_ALT):
		get_tree().change_scene("res://Node2D.tscn")
func load_quiz() -> void:
	
# Mostra a mensagem de Fim após o termino do quiz
	if Global.index >= db_perguntas.db.size():
		print("Fim")
		return
		
		
# informações nos botões
	texto_pergunta.text = str(db_perguntas.db[Global.index].Informacao_Pergunta)
	for i in buttons.size():
		buttons[i].text = str(db_perguntas.db[Global.index].opcoes[i])
		buttons[i].connect("pressed", self, "buttons_answer", [buttons[i]])
		
		
		
# Pegar as informações do banco e passar para as variáveis da tabela de informacao_pergunta
	match db_perguntas.db[Global.index].type:
		TipoPergunta.TEXTO:
			$informacao_pergunta/Panel.hide()
			
		TipoPergunta.IMAGEM:
			$informacao_pergunta/Panel.show()
			imagem_pergunta.texture = db_perguntas.db[Global.index].imagem_pergunta
			
		TipoPergunta.VIDEO:
			$informacao_pergunta/Panel.show()
			video_pergunta.stream = db_perguntas.db[Global.index].video_pergunta
			video_pergunta.play()
			
		TipoPergunta.AUDIO:
			$informacao_pergunta/Panel.show()
			imagem_pergunta.texture = load("res://audio/march.mp3")
			audio_pergunta.stream = db_perguntas.db[Global.index].audio_pergunta
			audio_pergunta.play()
	
# Determina a cor do botão de acordo com a resposta
func buttons_answer(button) -> void:
	print(button.text)
	if Global.index != Global.indexEscola and Global.index != Global.indexMercado and Global.index != Global.indexPrefeitura:
		if db_perguntas.db[Global.index].correct == button.text and Global.contador < 10 and Global.stop == 0:
			Global.contador += 1
			button.modulate = color_right
			Global.stop = 1
			Global.correto = 1
		elif db_perguntas.db[Global.index].correct == button.text and Global.contador >= 10 and Global.stop == 0:
			button.modulate = color_right
			Global.stop = 1
			Global.correto = 1
		else:
			if Global.stop == 0:
				button.modulate = color_right
				Global.contador -= 2
				Global.stop = 1
				Global.correto = 0
				
	else: 
		if db_perguntas.db[Global.index].correct == button.text and Global.contador < 10 and Global.stop == 0:
			Global.contador += 1
			button.modulate = color_right
			Global.stop = 1
			Global.correto = 1
		elif db_perguntas.db[Global.index].correct == button.text and Global.contador >= 10 and Global.stop == 0:
			button.modulate = color_right
			Global.stop = 1
			Global.correto = 1
		else:
			if Global.stop == 0:
				button.modulate = color_right
				Global.stop = 1
				Global.correto = 0
	audio_pergunta.stop()
	audio_pergunta.stop()
	
	yield(get_tree().create_timer(1), "timeout")
	
	
	for bt in buttons:
		bt.modulate = Color.white
		bt.disconnect("pressed", self, "buttons_answer")
		
	audio_pergunta.stream = null
	video_pergunta.stream =  null
	
# Avança para a proxima pergunta
	Global.index += 1
	
#Voltar para o mundo aberto
	get_tree().change_scene("res://cenas/cena_Explicacao/cena_Explicacao.tscn")

func _on_opcao1_pressed():
	$AudioStreamPlayer1.stream = load("res://audio/pencil_write.ogg")
	$AudioStreamPlayer1.play()
func _on_opcao2_pressed():
	$AudioStreamPlayer1.stream = load("res://audio/pencil_write.ogg")
	$AudioStreamPlayer1.play()
