extends Control

func _process(delta):
	if Global.index == 1:
		if Global.correto == 1:
			$Label.text = String("Olá, presidente, como chefe de estado você pode sancionar um projeto de lei" \
			+ " que beneficie os trabalhadores, como na situação anterior, portanto,"
			+ " caso você tenha escolhido essa opção, você ganhou 1 ponto na barra de aprovaçao de governo," \
			+ " contudo caso você tenha tomado a decisão de trazer trabalhadores de outros estados" \
			+ " mesmo não tendo recursos, você foi enquadrado no crime de improbidade fiscal" \
			+ " já que está criando dispensas fora do orçamento, causando prejuízo ao erário, logo," \
			+ " você perdeu 1 ponto na barra de aprovação do governo.")
		else: 
			$Label.text = String("Olá, presidente, como chefe de estado você pode sancionar um projeto de lei")
	
	if Global.index == 2:
		#if Global.correto == 1:
			$Label.text = String("Olá, presidente, como chefe de estado você não pode aceitar dinheiro" \
			+ " ou favorecimentos em função do seu cargo. O enriquecimento ilícito, como é o caso em" \
			+ " que você aceita a oferta da empresa é considerado crime de improbidade admnistrativa" \
			+ " e pode levar ao seu impeachment, caso tiver escolhido essa opção, sua barra de aprovação" \
			+ " diminuiu em 1 ponto, caso tenha escolhido a outa opção, recebeu 1 ponto pelo ato de" \
			+ " denunciar uma tentativa de corrupção advinda de dentro do poder legislativo")
		#else: 
			
	if Global.index == 3:
#		if Global.correto == 1:
			$Label.text = String("Olá, presidente, como chefe de estado você não pode aceitar dinheiro" \
			+ " ou favorecimentos em função do seu cargo. Atos que conferem prejuízo erário, como é o caso em" \
			+ " que você aceita a oferta da empresa, são considerados crimes de improbidade admnistrativa" \
			+ " e podem levar ao seu impeachment, caso tiver escolhido essa opção, sua barra de aprovação" \
			+ " diminuiu em 1 ponto, caso tenha escolhido a outa opção, você recebeu 1 ponto pelo ato de" \
			+ " denunciar uma tentativa de corrupção")
		#else:
			 
	if Global.index == 4:
#		if Global.correto == 1
			$Label.text = String("Para explorar esta região, a empresa precisa da autorização de exploração" \
			+ " (AUTEX) para que tenha legalidade sobre a região. Ao negociar com a madeireira, você será" \
			+ " cúmplice de um crime fazendo o seu governo antiético e inconstitucional") 
		#else:
		
	if Global.index == 5:
		#if Global.correto == 1:
			$Label.text = String("Ao aceitar a proposta da empresa e falar com o governador você estará" \
			+ " cometendo o crime de corrupção passiva, pois estará utilizando de seu cargo público para" \
			+ " receber vantagem indevida mediante favorecimento no contrato de concessão, logo, você perdeu 1" \
			+ " ponto no índice de aprovação do governo . Porém, ao denunciar ao Ministério Público (MP)," \
			+ " você estará realizando a escolha correta perante a lei e a ética, já que está denunciando" \
			+ " uma tentativa de corrupção, portanto, receberá 1 ponto no índice de aprovação do governo")
		#else:
		
	if Global.index == 6:
		#if Global.correto == 1:
			$Label.text = String(" Ao utilizar o poder presidencial para cassar o mandato de um funcionário" \
			+ " público você estará cometendo crime de abuso de autoridade e será julgado por isso, logo," \
			+ " perdeu 1 ponto no índice de aprovação do jogo  por comprometer a integridade da presidência." \
			+ " Caso você tenha escolhido pagar a multa como um cidadão comum, você recebeu 1 ponto por manter" \
			+ " a integridade do cargo presidencial.")
		#else:
			
	yield(get_tree().create_timer(20), "timeout")
	get_tree().change_scene("res://fimdejogo/vitoria/win_screen.tscn")
	if Global.index == 8:
		#if Global.correto == 1:
			$Label.text = String("Neste caso o responsável pelos problemas estruturais de uma escola é o"\
			+ " prefeito, pois o presidente tem funções federais, e isso se trata de um assunto municipal.")
		#else:
		
	if Global.index == 9:
		#if Global.correto == 1:
			$Label.text = String("A federação, pois ela que cuida dos casos federais, ou seja, problemas" \
			+ " das instituições federais, como o IF.")
		#else:
		
	if Global.index == 11:
		#if Global.correto == 1:
			$Label.text = String("Queixas em relação a falta de iluminação ou equipamento defeituoso" \
			+ " devem ser encaminhadas para a prefeitura")
		#else:
		
	if Global.index == 12:
		#if Global.correto == 1:
			$Label.text = String("O transporte público que circulam dentro de apenas uma cidade é" \
			+ " responsabilidade do prefeito. Os problemas que forem apresentados nessas áreas" \
			+ " não apresentam relação direta com o presidente.")
		#else:
		
	if Global.index == 13:
		#if Global.correto == 1:
			$Label.text = String(" É atribuída à União Federal o monopólio da exploração," \
			+ " pesquisa e lavra do petróleo em solo nacional, não sendo cabível aos" \
			+ " estados e municípios lidar com quaisquer questões a este relacionadas." \
			+ " Sendo assim, caso você tenha respondido que compete a federação você" \
			+ " ganhou 1 ponto, caso escolhido que compete à esfera municipal você perderá 1 ponto.")
		#else:
		
	if Global.index == 15:
		#if Global.correto == 1:
			$Label.text = String("A elevação do preço sem justa causa é considerado crime" \
			+ " pelo Código de Defesa do Consumidor. Caso você tenha escolhido a opção de denunciar" \
			+ " o mercado ao Procon, você ganhou 1 ponto, por ter agido da melhor forma frente a uma infração" \
			+ " dos direitos do consumidor, caso você tenha respondido que não poderia fazer nada, você não" \
			+ " ganha nem perde pontos, contudo frisamos que a situação ocorrida é irregular.")
		#else:
		
	if Global.index == 16:
		#if Global.correto == 1:
			$Label.text = String("A prática na cena anterior é conhecida como venda casada, esta é prevista" \
			+ " como ilegal pelo código do consumidor, portanto caso voce tenha respondido que esta prática" \
			+ " fere os direitos do consumidor, voce receberá 1 ponto, caso tenha respondido que nada pode" \
			+ " ser feito voce nao perderá nem ganhará nenhum ponto, mas frisamos que esta prática é " \
			+ "contra a lei e não pode ser feita.")
		#else:
		
	if Global.index == 17:
		#if Global.correto == 1:
			$Label.text = String("Supermercados que vendem produtos estragados precisam indenizar os consumidores," \
			+ " de acordo com o artigo 12, do Código de Defesa do Consumidor, assim, a fabricante deve ser" \
			+ " responsabilizada pelos danos causados aos mesmos. No caso retratado, denunciar ao Procon seria" \
			+ " a opção certa, pois utilizar o poder presidencial para fechar um estabelecimento seria abuso de poder.")
		#else:


func _on_botao_geral_pressed():
	
	if Global.contador <= 0:
		get_tree().change_scene("res://fimdejogo/game-over.tscn")
	else:
		if Global.index < Global.indexEscola:
			get_tree().change_scene("res://mundo-aberto.tscn")
		
		elif Global.index == 8:
			Global.indexEscola += 1
			Global.index = Global.indexMundoAberto
			get_tree().change_scene("res://mundo-aberto.tscn")
			
		elif Global.index == 10:
			Global.indexPrefeitura += 1
			Global.index = Global.indexMundoAberto
			get_tree().change_scene("res://mundo-aberto.tscn")
			
		elif Global.index == 12:
			Global.indexMercado += 1
			Global.index = Global.indexMundoAberto
			get_tree().change_scene("res://mundo-aberto.tscn")
