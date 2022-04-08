extends Node2D


func _ready():
	$GAMEOVER.play("game-over")

func _process(delta):
	if $voltar/botao_voltar.is_pressed():
		get_tree().change_scene("res://cena_Menu/Cena Principal/Interface_Menu.tscn")
