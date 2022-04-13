extends CanvasLayer

func _process(_delta):
	if Input.is_action_pressed("quit") or $back_to_Menu.is_pressed(): #caso pressione a ferramenta da HUD 
		$Options.show() #mostra o menu
		$back_to_Menu.hide() #esconde a ferramenta
