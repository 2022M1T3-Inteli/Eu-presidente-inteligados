extends Node2D


func _on_Area2D_body_entered(_body):
	Global.posicao_vertical += 42 #retorna o personagem a uma certa distância da porta, para a porta não entrar em loop
	get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
	Global.index = Global.indexMundoAberto #retorna o valor do index para aquele que estava no mundo aberto,
	#para que os estabelecimentos não interfiram no jogo

#Ativar quiz
func _on_Area2D2_body_entered(_body):
	get_tree().change_scene("res://Cenas/cena_Quiz/cena_Quiz.tscn")
