extends Node2D


func _on_Area2D_body_entered(body):
	if Global.contador < 10:
		Global.contador += 1
	$Vitoria.show()
	yield(get_tree().create_timer(2), "timeout")
	get_tree().change_scene("res://Prefeitura.tscn")
	Global.venceu_minigame = 1


func _on_Area2D3_body_entered(body):
	if Global.contador < 10:
		Global.contador += 1
	$ponto1.show()
	Global.venceu_minigame = 2


func _on_Area2D2_body_entered(body):
	if Global.contador < 10:
		Global.contador += 1
	$ponto2.show()
	Global.venceu_minigame = 2
