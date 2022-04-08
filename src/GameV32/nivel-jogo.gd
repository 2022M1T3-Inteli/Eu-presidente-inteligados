#Envia as perguntas para o Panel

extends Node


enum TipoPergunta { TEXTO, IMAGEM, VIDEO, AUDIO }

export(Resource) var db_perguntas
export(Color) var color_right
export(Color) var color_wrong

var buttons := []
var index := 0

# declarar os itens da tabela informacao_pergunta como variáveis
onready var texto_pergunta := $informacao_pergunta/texto_pergunta
onready var imagem_pergunta := $informacao_pergunta/Panel/imagem_pergunta
onready var video_pergunta := $informacao_pergunta/Panel/video_pergunta
onready var audio_pergunta := $informacao_pergunta/Panel/audio_pergunta

func _ready() -> void:
	for _button in $resposta.get_children():
		buttons.append(_button)
		
	load_quiz()

func load_quiz() -> void:
	
# Mostra a mensagem de Fim após o termino do quiz
	if index >= db_perguntas.db.size():
		print("Fim")
		return
		
		
# informações nos botões
	texto_pergunta.text = str(db_perguntas.db[index].Informacao_Pergunta)
	for i in buttons.size():
		buttons[i].text = str(db_perguntas.db[index].opcoes[i])
		buttons[i].connect("pressed", self, "buttons_answer", [buttons[i]])
		
		
		
# Prgar as informações do banco e passar para as variáveis da tabela de informacao_pergunta
	match db_perguntas.db[index].type:
		TipoPergunta.TEXTO:
			$informacao_pergunta/Panel.hide()
			
		TipoPergunta.IMAGEM:
			$informacao_pergunta/Panel.show()
			imagem_pergunta.texture = db_perguntas.db[index].imagem_pergunta
			
		TipoPergunta.VIDEO:
			$informacao_pergunta/Panel.show()
			video_pergunta.stream = db_perguntas.db[index].video_pergunta
			video_pergunta.play()
			
		TipoPergunta.AUDIO:
			$informacao_pergunta/Panel.show()
			imagem_pergunta.texture = load("res://audio/march.mp3")
			audio_pergunta.stream = db_perguntas.db[index].audio_pergunta
			audio_pergunta.play()
	

# Determina a cor do botão de acordo com a resposta
func buttons_answer(button) -> void:
	print(button.text)
	if db_perguntas.db[index].correct == button.text:
		button.modulate = color_right
	else: 
		button.modulate = color_wrong
		
		
	audio_pergunta.stop()
	audio_pergunta.stop()
	
	yield(get_tree().create_timer(1), "timeout")
	for bt in buttons:
		bt.modulate = Color.white
		bt.disconnect("pressed", self, "buttons_answer")
		
	audio_pergunta.stream = null
	video_pergunta.stream =  null
	
# Avança para a proxima pergunta
	index += 1
	load_quiz()
