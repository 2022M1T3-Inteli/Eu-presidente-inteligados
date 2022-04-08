extends KinematicBody2D


var escolher_esquerda = 1
var escolher_direita = 0
func _process(delta):
	
	if Input.is_action_just_pressed("ui_left") and escolher_esquerda == 0:
		position.x -= 1500
		escolher_esquerda = 1
		escolher_direita = 0
	
	if Input.is_action_just_pressed("ui_right") and escolher_direita == 0:
		position.x += 1500
		escolher_direita = 1
		escolher_esquerda = 0
	
