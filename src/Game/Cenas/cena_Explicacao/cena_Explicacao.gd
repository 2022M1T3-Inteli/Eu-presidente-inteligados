extends Control

func _process(_delta):
	if Global.correto == 1:
		$Ganhou.show() #mostra que o player recebeu 1 ponto
		$Perdeu.hide()
	else:
		$Ganhou.hide()
		if Global.index != 8 and Global.index != 10 and Global.index != 12:
			$Perdeu.show() #mostra a sprite de perder 2 pontos caso ele esteja em mundo aberto
		
	if Global.index == 1: #determina a resposta para a primeira pergunta
		if Global.correto == 1: #determina uma resposta diferente quando acerta ou erra uma questão
			$Label.text = String("Olá, presidente, como chefe de estado você pode sancionar um projeto de lei" \
			+ " que beneficie os trabalhadores, como na resposta que você escolheu, portanto"
			+ " você ganhou 1 ponto na barra de aprovaçao de governo." )
		else: 
			$Label.text = String("Olá, presidente, como você escolheu trazer trabalhadores" \
			+ " mesmo não tendo recursos, você foi enquadrado no crime de improbidade fiscal" \
			+ " já que está criando dispensas fora do orçamento, causando prejuízo ao erário, logo," \
			+ " você perdeu 2 pontos na barra de aprovação do governo.")
	
	if Global.index == 2: #determina a resposta para a segunda pergunta
		if Global.correto == 1: #determina uma resposta diferente quando acerta ou erra uma questão
			$Label.text = String("Olá, presidente, como chefe de estado você demonstrou integridade ao" \
			+ " denunciar uma tentativa de corrupção advinda de dentro do poder legislativo, seu ato" \
			+ " fez juz à seu cargo, portanto sua barra de aprovação aumentou em 1 ponto")
		else: 
			$Label.text = String("Olá, presidente, como chefe de estado você não pode aceitar dinheiro" \
			+ " ou favorecimentos em função do seu cargo. O enriquecimento ilícito, como é o caso da sua" \
			+ " decisão, é considerado crime de improbidade admnistrativa" \
			+ " e pode levar ao seu impeachment, desta forma a sua barra de aprovação" \
			+ " diminuiu em 1 ponto")


	if Global.index == 3:#determina a resposta para a terceira pergunta
		if Global.correto == 1: #determina uma resposta diferente quando acerta ou erra uma questão
			$Label.text = String("Olá, presidente, como chefe de estado você agiu de forma exemplar ao" \
			+ " denunciar uma tentativa de corrupção e em função disso você ganhou 1 ponto em sua barra de" \
			+ " aprovação. A população fica feliz em ver seu presidente expondo esquemas de corrupção.")
		else:
			$Label.text = String("Olá, presidente, como chefe de estado você não pode aceitar dinheiro" \
			+ " ou favorecimentos em função do seu cargo. Atos que conferem prejuízo erário, como é o caso " \
			+ " da sua escolha anterior, são considerados crimes de improbidade admnistrativa" \
			+ " e podem levar ao seu impeachment.") 

 
	if Global.index == 4:#determina a resposta para a quarta pergunta
		if Global.correto == 1: #determina uma resposta diferente quando acerta ou erra uma questão
			$Label.text = String("Olá, Presidente, para explorar esta região, a madeireira precisa da autorização de exploração" \
			+ " (AUTEX) para que tenha legalidade sobre a região. Ao negar a negociação com esta empresa e a " \
			+ " denunciar para o Ministério Público você ajudou responsabilizar uma empresa que estava prejudicando a flora local" \
			+ " por agir de forma ilícita. Em função do seu ato, sua barra de aprovação aumentou 1 ponto.")
		else:
			$Label.text = String("Olá, Presidente, para explorar esta região, a madeireira precisa da autorização de exploração " \
			+ " (AUTEX) para que tenha legalidade sobre a região. Ao aceitar a negociação com a madeireira você" \
			+ " cometeu o crime de corrupção passiva, pois utilizou de seu cargo público para " \
			+ " receber vantagem indevida mediante ao fornecimento de meios para regular uma empresa " \
			+ " que agia de forma ilegal em troca de favorecimento pessoal para você e sua família." \
			+ " Desta forma você perdeu 2 pontos na barra de aprovação do governo")  


	if Global.index == 5:#determina a resposta para a quinta pergunta
		if Global.correto == 1: #determina uma resposta diferente quando acerta ou erra uma questão
			$Label.text = String("Olá, Presidente, denunciando essa tentiva de corrupção ao Ministério Público (MP)," \
			+ " você estará realizando a escolha correta perante a lei e a ética, já que denunciou" \
			+ " uma tentativa de corrupção, portanto, receberá 1 ponto no índice de aprovação do governo")
		else:
			$Label.text = String("Olá, Presidente, ao aceitar a proposta da empresa e falar com o governador você" \
			+ " cometeu o crime de corrupção passiva, pois utilizou de seu cargo público para" \
			+ " receber vantagem indevida mediante favorecimento no contrato de concessão, logo, você perdeu 2" \
			+ " pontos no índice de aprovação do governo .")


	if Global.index == 6:#determina a resposta para a sexta pergunta
		if Global.correto == 1: #determina uma resposta diferente quando acerta ou erra uma questão
			$Label.text = String("Olá, Presidente, ao escolher pagar a multa como um cidadão comum, você recebeu 1 ponto," \
			+ "justamente por manter a integridade do cargo presidencial.")
		else:
			$Label.text = String("Olá, Presidente, ao utilizar o poder presidencial para cassar o mandato de um funcionário" \
			+ " público você estará cometendo crime de abuso de autoridade e será julgado por isso, logo," \
			+ " perdeu 2 pontos no índice de aprovação do jogo  por comprometer a integridade do ccargo presidencial.")


	if Global.index == 8:#determina a resposta para a pergunta da escola
		if Global.correto == 1: #determina uma resposta diferente quando acerta ou erra uma questão
			$Label.text = String("Olá, Presidente, parece que seu problema de memória está melhorando, não é mesmo?" \
			+ " você até se lembrou das obrigações de um dos cargos do poder executivo. Realmente," \
			+ " quem cuida dessas questões é o prefeito, parabéns por ter acertado, você ganhou 1 ponto.")
		else:
			$Label.text = String("Olá, Presidente, parece que você ainda não recuperou sua memória completamente, mas devo"\
			+ "lhe dizer que quem cuida de questões como esta não é você, mas sim o prefeito. Para sua sorte, nenhum ponto foi perdido")
		
	if Global.index == 10:#determina a resposta para a pergunta da prefeitura
		if Global.correto == 1: #determina uma resposta diferente quando acerta ou erra uma questão
			$Label.text = String("Olá, Presidente, você respondeu corretamente, é de responsabilidade " \
			+ " da prefeitura cuidar da iluminação em áres públicas, tais como ruas, parques e praças." \
			+ " Por ter acertado a pergunta você ganhou 1 ponto!.")
		else:
			$Label.text = String("Olá, Presidente, você deve ter se esquecido de novo, mas a manutenção" \
			+ " da iluminação em locais públicos não é de responsabilidade das companhias elétricas, embora"\
			+ " você não esteja correto na sua resposta, você não perdeu nenhum ponto.")


	if Global.index == 12:#determina a resposta para a pergunta do mercado
		if Global.correto == 1: #determina uma resposta diferente quando acerta ou erra uma questão
			$Label.text = String("Olá, Presidente, você escolheu corretamente, pois a elevação dos" \
			+ " preços sem justa causa é considerado crime" \
			+ " pelo Código de Defesa do Consumidor. Como você escolheu denunciar" \
			+ " o mercado ao Procon, você ganhou 1 ponto, por ter agido da melhor forma frente " \
			+ " a uma infração dos direitos do consumidor. ")
		else:
			$Label.text = String("Olá, Presidente, você deve ter se esquecido, mas a elevação" \
			+ " dos preços, sem justa causa, não pode ser feita pelo mercado, porque o Código de" \
			+ " Defesa do Consumidor prevê isso como uma prática abusiva, embora você tenha feito" \
			+ " essa escolha, não se preocupe, você não perdeu nenhum ponto.")


#	if Global.index == 12:
#		#if Global.correto == 1:
#			$Label.text = String("O transporte público que circulam dentro de apenas uma cidade é" \
#			+ " responsabilidade do prefeito. Os problemas que forem apresentados nessas áreas" \
#			+ " não apresentam relação direta com o presidente.")
#		#else:
#
#	if Global.index == 13:
#		#if Global.correto == 1:
#			$Label.text = String(" É atribuída à União Federal o monopólio da exploração," \
#			+ " pesquisa e lavra do petróleo em solo nacional, não sendo cabível aos" \
#			+ " estados e municípios lidar com quaisquer questões a este relacionadas." \
#			+ " Sendo assim, caso você tenha respondido que compete a federação você" \
#			+ " ganhou 1 ponto, caso escolhido que compete à esfera municipal você perderá 1 ponto.")
#		#else:
#
#	if Global.index == 15:
#		#if Global.correto == 1:
#			$Label.text = String("A elevação do preço sem justa causa é considerado crime" \
#			+ " pelo Código de Defesa do Consumidor. Caso você tenha escolhido a opção de denunciar" \
#			+ " o mercado ao Procon, você ganhou 1 ponto, por ter agido da melhor forma frente a uma infração" \
#			+ " dos direitos do consumidor, caso você tenha respondido que não poderia fazer nada, você não" \
#			+ " ganha nem perde pontos, contudo frisamos que a situação ocorrida é irregular.")
#		#else:
#
#	if Global.index == 16:
#		#if Global.correto == 1:
#			$Label.text = String("A prática na cena anterior é conhecida como venda casada, esta é prevista" \
#			+ " como ilegal pelo código do consumidor, portanto caso voce tenha respondido que esta prática" \
#			+ " fere os direitos do consumidor, voce receberá 1 ponto, caso tenha respondido que nada pode" \
#			+ " ser feito voce nao perderá nem ganhará nenhum ponto, mas frisamos que esta prática é " \
#			+ "contra a lei e não pode ser feita.")
#		#else:
#
#	if Global.index == 17:
#		#if Global.correto == 1:
#			$Label.text = String("Supermercados que vendem produtos estragados precisam indenizar os consumidores," \
#			+ " de acordo com o artigo 12, do Código de Defesa do Consumidor, assim, a fabricante deve ser" \
#			+ " responsabilizada pelos danos causados aos mesmos. No caso retratado, denunciar ao Procon seria" \
#			+ " a opção certa, pois utilizar o poder presidencial para fechar um estabelecimento seria abuso de poder.")
#		#else:


func _on_botao_geral_pressed():
	
	if Global.contador <= 0: #se o contador chegar a 0, muda para o game over
		get_tree().change_scene("res://Cenas/final_Fase1/game_Over.tscn")
	else:
		if Global.index < Global.indexEscola and Global.index != 6: #caso estiver na campanha em uma pergunta diferente da final, volta para o mundo
			get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
			
		if Global.index == 6 and Global.contador != 0: #apresenta a cena de próxima fase caso ainda houver pontos na HUD
				get_tree().change_scene("res://Cenas/final_Fase1/win_Screen.tscn")
		
		elif Global.index == 8: #caso estiver na escola
			Global.indexEscola += 1 #aumenta o index do mundo fechado
			Global.index = Global.indexMundoAberto #retorna o index para o que estava antes de entrar no prédio
			get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
			
		elif Global.index == 10: #caso estiver na prefeitura
			Global.indexPrefeitura += 1 #aumenta o index do mundo fechado
			Global.index = Global.indexMundoAberto #retorna o index para o que estava antes de entrar no prédio
			get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
			
		elif Global.index == 12:#caso estiver no mercado
			Global.indexMercado += 1  #aumenta o index do mundo fechado
			Global.index = Global.indexMundoAberto #retorna o index para o que estava antes de entrar no prédio
			get_tree().change_scene("res://Cenas/cena_Mundo_Aberto/cena_Mundo_Aberto.tscn")
