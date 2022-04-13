extends Node2D

var primeiroPonto = 1
var segundoPonto = 1
var ganhou = 1

func _ready():
	if Global.mudo == 1:
		$musica_minigame.stop()
	if Global.mudo == 0:
		$musica_minigame.play()


func _on_Area2D_body_entered(_body):
	if Global.contador < 10 and ganhou == 1:
		ganhou = 0
		Global.contador += 1
	$Vitoria.show()
	yield(get_tree().create_timer(2), "timeout")
	get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
	Global.venceu_minigame = 1


func _on_Area2D3_body_entered(_body):
	if Global.contador < 10 and primeiroPonto == 1:
		primeiroPonto = 0
		Global.contador += 1
		$ponto1.show()
	Global.venceu_minigame = 2
	yield(get_tree().create_timer(2), "timeout")
	$ponto1.hide()


func _on_Area2D2_body_entered(_body):
	if Global.contador < 10 and segundoPonto == 1:
		segundoPonto = 0
		Global.contador += 1
		$ponto2.show()
	Global.venceu_minigame = 2
	yield(get_tree().create_timer(2), "timeout")
	$ponto2.hide()
