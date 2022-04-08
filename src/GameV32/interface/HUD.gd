extends Node2D

var contador = 10

func _on_Button_pressed(): 
		
	if contador == 10: 
		contador -= 1 #subtrai um ponto do indicador no sistema
		$BarraAmarela10.hide() #isso fará visualmente o último bloco desaparecer
		
	elif contador == 9:
		contador -= 1
		$BarraAmarela9.hide()
#
	elif contador == 8:
		contador -= 1
		$BarraAmarela8.hide()
		
	elif contador == 7:
		contador -= 1
		$BarraAmarela7.hide()
	
	elif contador == 6:
		contador -= 1
		$BarraAmarela6.hide()
		
	elif contador == 5:
		contador -= 1
		$BarraAmarela5.hide()
	
	elif contador == 4:
		contador -= 1
		$BarraAmarela4.hide()
		
	elif contador == 3:
		contador -= 1
		$BarraAmarela3.hide()
		$Label2.show()
		$Label2.text = String("Tome cuidado, você poderá sofrer um impeachment")
	# alerta para o presidente repensar as suas atitudes
	
	elif contador == 2:
		contador -= 1
		$BarraAmarela2.hide()

	elif contador == 1:
		contador -= 1
		$BarraAmarela1.hide()

		
	if contador == 0:
		$Label.text = String("Você sofreu um impeachement")
		$Label2.hide()
		
	print(contador)


func _on_Button2_pressed():
	if contador == 1:
		contador += 1 #adiciona um ponto do indicador no sistema
		$BarraAmarela2.show() #isso fará visualmente o segundo bloco a aparecer

	elif contador == 2:
		contador += 1
		$BarraAmarela3.show()
		$Label2.hide() #esconde o aviso caso ele conseguir aumentar o indicador
	
	elif contador == 3:
		contador += 1
		$BarraAmarela4.show()
		
	elif contador == 4:
		contador += 1
		$BarraAmarela5.show()
		
	elif contador == 5:
		contador += 1
		$BarraAmarela6.show()
		
	elif contador == 6:
		contador += 1
		$BarraAmarela7.show()
	
	elif contador == 7:
		contador += 1
		$BarraAmarela8.show()
	
	elif contador == 8:
		contador += 1
		$BarraAmarela9.show()
		
	elif contador == 9:
		contador += 1
		$BarraAmarela10.show()
		#o programa é limitado a 10 pontos


	
