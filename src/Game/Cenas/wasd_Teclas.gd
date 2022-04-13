extends CanvasLayer


func _process(_delta):
	#Mostrar a tecla pressionada
	if Input.is_action_pressed("ui_down"):
		$CenterContainer/S.show()
	if Input.is_action_pressed("ui_up"):
		$CenterContainer/W.show()
	if Input.is_action_pressed("ui_right"):
		$CenterContainer/D.show()
	if Input.is_action_pressed("ui_left"):
		$CenterContainer/A.show()	
		
	#Esconder a tecla ao soltar o botão
	if Input.is_action_just_released("ui_down"):
		$CenterContainer/S.hide()
	if Input.is_action_just_released("ui_up"):
		$CenterContainer/W.hide()
	if Input.is_action_just_released("ui_left"):
		$CenterContainer/A.hide()
	if Input.is_action_just_released("ui_right"):
		$CenterContainer/D.hide()
