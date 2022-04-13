extends ColorRect



func _process(_delta): 
	if $menu/menu.is_pressed(): #volta para o menu 
		get_tree().change_scene("res://Cenas/cena_Menu/cena_Menu.tscn")
	if $continue/continue.is_pressed(): #continua no mundo aberto
		get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
	if Global.mudo == 1: 
		$audio_Icon.frame = 1 #símbolo de mudo
	if Global.mudo == 0: 
		$audio_Icon.frame = 0 #símbolo de som

func _on_audio_pressed(): 
	if Global.mudo == 0: 
		Global.mudo = 1 #ativa o som do jogo
		$audio_Icon.frame = 1 #símbolo de mudo
	else:
		if Global.mudo ==  1:
			Global.mudo = 0 #muta o som do jogo
			$audio_Icon.frame = 0 #símbolo de som
