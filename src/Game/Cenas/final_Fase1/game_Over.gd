extends Node2D



func _ready():
	$game_over_theme.play() #Tocar música
	$GAMEOVER.play("game-over") #Dar play na animação

#Botão de voltar para o menu
func _process(_delta):
	if $voltar/botao_voltar.is_pressed():
		get_tree().change_scene("res://Cenas/cena_Menu/cena_Menu.tscn")
		Global.reiniciar = 0 
