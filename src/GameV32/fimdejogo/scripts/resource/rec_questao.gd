extends Resource
class_name Pergunta

enum TipoPergunta { TEXTO, IMAGEM, VIDEO, AUDIO }

export(String) var Informacao_Pergunta
export(TipoPergunta) var type
export(Texture) var imagem_pergunta
export(AudioStream) var audio_pergunta
export(VideoStream) var video_pergunta
export(Array, String) var opcoes
export(String) var correct 
