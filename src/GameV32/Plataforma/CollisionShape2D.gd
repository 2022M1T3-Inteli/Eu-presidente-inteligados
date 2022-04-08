extends CollisionShape2D
var flip = true
var posicao_inicial
var posicao_final
var velocidade = 1
var limite
func _ready():
 posicao_inicial = $Hitbox.position.x
 posicao_final = 100
 limite = posicao_inicial + posicao_final
func _process(delta):
	if ($Hitbox.position.x >= posicao_final):
		flip = true
	elif ($Hitbox.position.x <= posicao_inicial):
		flip = false
	if (flip):
		$Hitbox.position.x -= velocidade
	else:
		$Hitbox.position.x += velocidade
