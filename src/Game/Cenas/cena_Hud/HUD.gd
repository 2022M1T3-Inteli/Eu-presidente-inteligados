extends CanvasLayer

func _process(_delta):
	if Global.contador == 9:
		$BarraAmarela10.hide() #isso fará visualmente o último bloco desaparecer
	elif Global.contador == 8:
		$BarraAmarela9.hide() #esconderá todas as sprites maiores do que o contador
		$BarraAmarela10.hide()
	elif Global.contador == 7:
		$BarraAmarela8.hide() #mesma lógica das anteriores
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 6:
		$BarraAmarela7.hide() #mesma lógica das anteriores
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 5:
		$BarraAmarela6.hide() #mesma lógica das anteriores
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 4:
		$BarraAmarela5.hide() #mesma lógica das anteriores
		$BarraAmarela6.hide()
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 3:
		$BarraAmarela4.hide() #mesma lógica das anteriores
		$BarraAmarela5.hide()
		$BarraAmarela6.hide()
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 2:
		$BarraAmarela3.hide() #mesma lógica das anteriores
		$BarraAmarela4.hide()
		$BarraAmarela5.hide()
		$BarraAmarela6.hide()
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 1:
		$BarraAmarela2.hide() #mesma lógica das anteriores
		$BarraAmarela3.hide()
		$BarraAmarela4.hide()
		$BarraAmarela5.hide()
		$BarraAmarela6.hide()
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	elif Global.contador == 0:
		$BarraAmarela1.hide() #mesma lógica das anteriores
		$BarraAmarela2.hide()
		$BarraAmarela3.hide()
		$BarraAmarela4.hide()
		$BarraAmarela5.hide()
		$BarraAmarela6.hide()
		$BarraAmarela7.hide()
		$BarraAmarela8.hide()
		$BarraAmarela9.hide()
		$BarraAmarela10.hide()
	if Global.contador <= 3:
		$Label2.show() #mostra uma label de alerta para o presidente quando o indicador estiver baixo
		$Label2.text = String("Tome cuidado, você poderá sofrer um impeachment")
	elif Global.contador > 3: 
		$Label2.hide()
	# alerta para o presidente repensar as suas atitudes
