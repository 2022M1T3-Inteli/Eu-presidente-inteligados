extends Node2D

var sul = 0

#Centro
func _on_centro_body_entered(body):
	$centro/centro.frame = 1
	$mapas_text.text = "Região Centro-Oeste bloqueada"
	$MenuItem2.modulate = Color.orange
func _on_centro_body_exited(body):
	$centro/centro.frame = 0
	$mapas_text.text = "Use as setas para viajar pelo Brasil!"

#Nordeste
func _on_Nordeste_body_entered(body):
	$Nordeste/nordeste.frame = 1
	$mapas_text.text = "Região Nordeste bloqueada"
	$MenuItem2.modulate = Color.red
func _on_Nordeste_body_exited(body):
	$Nordeste/nordeste.frame = 0
	$mapas_text.text = "Use as setas para viajar pelo Brasil!"

#Sudeste
func _on_Sudeste_body_entered(body):
	$Sudeste/sudeste.frame = 1
	$mapas_text.text = "Região Sudeste bloqueada"
	$MenuItem2.modulate = Color.yellow
func _on_Sudeste_body_exited(body):
	$Sudeste/sudeste.frame = 0
	$mapas_text.text = "Use as setas para viajar pelo Brasil!"

#Sul
func _on_Sul_body_entered(body):
	$Sul/sul.frame = 1
	$mapas_text.text = "Pressione barra de espaço para jogar!"
	$MenuItem2.modulate = Color.cyan
	sul = 1
func _on_Sul_body_exited(body):
	$Sul/sul.frame = 0
	$mapas_text.text = "Use as setas para viajar pelo Brasil!"
	sul = 0

#Norte
func _on_Norte_body_entered(body):
	$Norte/norte.frame = 1
	$mapas_text.text = "Região Norte bloqueada"
	$MenuItem2.modulate = Color.chartreuse
func _on_Norte_body_exited(body):
	$Norte/norte.frame = 0
	$mapas_text.text = "Use as setas para viajar pelo Brasil!"

func _process(delta):
	if Input.is_action_pressed("ui_accept") and $Sul/sul.frame == 1:
		print("leleo")
		if Global.reiniciar == 0:
			get_tree().change_scene("res://cutscene/inicio.tscn")
		if Global.reiniciar == 1:
			get_tree().change_scene("res://mundo-aberto.tscn")
	if $KinematicBody2D.position.x > 1300:
		$KinematicBody2D.position.x = -100
	if $KinematicBody2D.position.x < -100:
		$KinematicBody2D.position.x = 1300

	if $KinematicBody2D.position.y < -100:
		$KinematicBody2D.position.y = 790
	if $KinematicBody2D.position.y > 790:
		$KinematicBody2D.position.y = -100
