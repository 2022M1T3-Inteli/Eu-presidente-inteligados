extends StaticBody2D
var flip = true
var posicao_inicial
var posicao_final
var velocidade = 1
var limite
func _ready():
 posicao_inicial = $"Icon".position.x
 posicao_final = 100
 limite = posicao_inicial + posicao_final
func _process(delta):
	if ($"Icon".position.x >= posicao_final):
		flip = true
	elif ($"Icon".position.x <= posicao_inicial):
		flip = false
	if (flip):
		$"Icon".position.x -= velocidade
		#$"CollisionShape2D".position.x -= velocidade
	else:
		$"Icon".position.x += velocidade
		#$"CollisionShape2D".position.x -= velocidade
