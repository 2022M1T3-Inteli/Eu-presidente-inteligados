extends CanvasLayer




func _process(delta):
	if Global.contador == 9:
		$BarraAmarela10.hide() #isso fará visualmente o último bloco desaparecer
#
	elif Global.contador == 8:
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
#
	elif Global.contador == 7:
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 6:
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 5:
		$BarraAmarela6.hide()
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 4:
		$BarraAmarela5.hide()
		$BarraAmarela6.hide()
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 3:
		$BarraAmarela4.hide()
		$BarraAmarela5.hide()
		$BarraAmarela6.hide()
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 2:
		$BarraAmarela3.hide()
		$BarraAmarela4.hide()
		$BarraAmarela5.hide()
		$BarraAmarela6.hide()
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
		$Label2.show()
		$Label2.text = String("Tome cuidado, você poderá sofrer um impeachment")
	# alerta para o presidente repensar as suas atitudes
	elif Global.contador == 1:
		$BarraAmarela2.hide()
		$BarraAmarela3.hide()
		$BarraAmarela4.hide()
		$BarraAmarela5.hide()
		$BarraAmarela6.hide()
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 0:
		$BarraAmarela1.hide()
		$BarraAmarela2.hide()
		$BarraAmarela3.hide()
		$BarraAmarela4.hide()
		$BarraAmarela5.hide()
		$BarraAmarela6.hide()
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	if Global.contador == 0:
		$Label.text = String("Você sofreu um impeachement")
		$Label2.hide()

	if Input.is_action_pressed("quit") or $back_to_Menu.is_pressed(): 
		get_tree().change_scene("res://cena_Menu/Cena Principal/Interface_Menu.tscn")
		

	
func _on_opcao1_pressed():
	if Global.contador == 10:
		Global.contador -= 1 #subtrai um ponto do indicador no sistema
	elif Global.contador == 9:
		Global.contador -= 1
	elif Global.contador == 8:
		Global.contador -= 1
	elif Global.contador == 7:
		Global.contador -= 1
	elif Global.contador == 6:
		Global.contador -= 1
	elif Global.contador == 5:
		Global.contador -= 1
	elif Global.contador == 4:
		Global.contador -= 1
	elif Global.contador == 3:
		Global.contador -= 1
		$Label2.show()
		$Label2.text = String("Tome cuidado, você poderá sofrer um impeachment")
	# alerta para o presidente repensar as suas atitudes
	elif Global.contador == 2:
		Global.contador -= 1
	elif Global.contador == 1:
		Global.contador -= 1
	if Global.contador == 0:
		$Label.text = String("Você sofreu um impeachement")
		$Label2.hide()
#	print(Singleton.contador)


func _on_opcao2_pressed():
	if Global.contador == 1:
		Global.contador += 1 #adiciona um ponto do indicador no sistema
		$BarraAmarela2.show() #isso fará visualmente o segundo bloco a aparecer
	elif Global.contador == 2:
		Global.contador += 1
		$BarraAmarela3.show()
		$Label2.hide() #esconde o aviso caso ele conseguir aumentar o indicador
	elif Global.contador == 3:
		Global.contador += 1
		$BarraAmarela4.show()
	elif Global.contador == 4:
		Global.contador += 1
		$BarraAmarela5.show()
	elif Global.contador == 5:
		Global.contador += 1
		$BarraAmarela6.show()
	elif Global.contador == 6:
		Global.contador += 1
		$BarraAmarela7.show()
	elif Global.contador == 7:
		Global.contador += 1
		$BarraAmarela8.show()
	elif Global.contador == 8:
		Global.contador += 1
		$BarraAmarela9.show()
	elif Global.contador == 9:
		Global.contador += 1
		$BarraAmarela10.show()
		#o programa é limitado a 10 pontos
#	print(Singleton.contador) # Replace with function bod

