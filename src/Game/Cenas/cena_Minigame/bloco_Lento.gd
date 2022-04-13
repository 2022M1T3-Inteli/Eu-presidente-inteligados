extends KinematicBody2D
var flip = true
var posicao_atual
var posicao_inicial = self.position.x #detecta a posição do bloco antes do jogo começar
var posicao_final #distância que o bloco pode percorrer a mais 
var velocidade = 1 #velocidade horizontal do bloco (mais baixa)
var limite #intervalo que o bloco pode percorrer 

func _ready():
	posicao_atual = self.position.x #posição atual do bloco no momento em que o jogo está operando
	posicao_final = 100 
	limite = posicao_inicial + posicao_final #posição até onde o corpo pode se mover no eixo x

func _process(_delta):
	if (self.position.x >= limite): #se a posição for maior do que o limite
		flip = true
	elif (self.position.x <= posicao_inicial):
		flip = false
	if (flip): 
		self.position.x -= velocidade #altera o sentido da velocidade se o flip for ativo
	else:
		self.position.x += velocidade #permanece inalterado
