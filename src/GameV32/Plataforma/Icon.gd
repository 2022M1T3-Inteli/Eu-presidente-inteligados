extends Sprite
var flip = true
var posicao_inicial
var posicao_final
var velocidade = 1
var limite
func _ready():
 posicao_inicial = $"Icon".position.y
 posicao_final = 100
 limite = posicao_inicial + posicao_final
func _process(delta):
 if(posicao_inicial <= limite and flip):
  $"Icon".position.y += velocidade
  if($"Icon".position.y >= limite):
   flip = false
   print ("Parou")
 if($"Icon".position.y >= posicao_inicial and !flip):
  $"Icon".position.y -= velocidade
  if($"Icon".position.y <= posicao_inicial):
   flip = true
	
