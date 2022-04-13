extends KinematicBody2D

var velocidade = -2 #movimentação para a esquerda

func _process(_delta):
	if Global.colidiu == 1:
		velocidade = 0
	else:
		self.position.x += velocidade
