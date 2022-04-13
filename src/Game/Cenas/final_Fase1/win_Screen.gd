extends Node2D

#Animação da ana
func _ready():
	$win_1.play("ana_fase1")

#botão de voltar para o mundo aberto
func _on_Button_pressed():
	get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")


#Trocar cor do botão
func _on_Button_mouse_entered():
	$Button/MenuItem2.modulate = Color.cornflower
func _on_Button_mouse_exited():
	$Button/MenuItem2.modulate = Color.white
