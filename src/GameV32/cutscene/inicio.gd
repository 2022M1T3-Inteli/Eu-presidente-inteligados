extends Node2D


var cont = 0

func _ready():
	$inicio_jogo/jogar.hide()
	$inicio_jogo.play("intro")

func _process(delta):
	if $inicio_jogo/jogar.is_pressed():
		get_tree().change_scene("res://mundo-aberto.tscn")
	if Input.is_action_just_pressed("ui_accept"):
		cont += 1
	if cont == 10:
		$inicio_jogo/jogar.show()


