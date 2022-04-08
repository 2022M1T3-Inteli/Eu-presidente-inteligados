extends Node2D



func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://mundo-aberto.tscn")
	Global.index = Global.indexMundoAberto #retorna o valor do index para aquele que estava no mundo aberto,
	#para que os estabelecimentos não interfiram no jogo


func _on_Area2D2_body_entered(body):
	get_tree().change_scene("res://cenas/quiz.tscn")
