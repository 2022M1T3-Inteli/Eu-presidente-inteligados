extends Node

var contador = 5 #variável que comanda a HUD
var index = 0 #variável que comanda qual pergunta será chamada de cada vez
var posicao_horizontal = 660 #variável que armazena a posição horizontal do jogador
var posicao_vertical = 109 #variável que armazena a posição vertical do jogador
var textbox = 0 #variável que armazena informações sobre a caixa de texto
var indexMundoAberto = 0 #variável que armazena o index do mundo aberto
var indexPrefeitura = 9 #variável que determina a pergunta a ser chamada na prefeitura
var indexEscola = 7 #variável que determina a pergunta a ser chamada no mercad
var indexMercado = 11 #variável que determina a pergunta a ser chamada no mercado
var stop = 0 #variável que impede do jogador respondar a mesma pergunta diversas vezes
var colidiu = 0 #variável que determina se o corpo colidiu com um foguete no minigame
var venceu_minigame = 0 #variável que determina se o jogador venceu o minigame
var correto = 0 #variável que armazena a informação se o jogador acertou ou não a pergunta
var acertouPrefeitura = 0 #variável que determina se ele acertou a pergunta da prefeitura
var acertouEscola = 0#variável que determina se ele acertou a pergunta da escola
var acertouMercado = 0 #variável que determina se ele acertou a pergunta do mercado
var contador_easter_egg = 0 #variável que deterimina quando o easter egg será chamado
var reiniciar = 0 #variável que determina se o jogo pode ser reiniciado
var mudo = 0 #variável que controla a reprodução ou não do som
var subiuRua = 0 #variável que determina se o presidente chegou ao mundo aberto passando pelo mundo aberto ou pelo menu
