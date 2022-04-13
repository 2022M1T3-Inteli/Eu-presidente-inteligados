extends Node2D

func _ready(): #desativar som do jogo
	if Global.mudo == 1:
		$musica_cutscene.stop()
	if Global.mudo == 0:
		$musica_cutscene.play()
	$inicio_jogo/jogar.hide()
	$inicio_jogo.play("intro")
	yield(get_tree().create_timer(5), "timeout")
	$inicio_jogo/jogar.show()

#Mudar para o mapa do Brasi
func _process(_delta):
	if $inicio_jogo/jogar.is_pressed():
		get_tree().change_scene("res://Cenas/cena_MapaBrasil/mapa_Brasil.tscn")


