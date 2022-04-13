# Inteli - Instituto de Tecnologia e Liderança 

<p align="center">
<a href= "https://www.inteli.edu.br/"><img src="https://www.inteli.edu.br/wp-content/uploads/2021/08/20172028/marca_1-2.png" alt="Inteli - Instituto de Tecnologia e Liderança" border="0"></a>
</p>

# Eu, Presidente

## Inteligados

## Integrantes: </p> <a href="https://www.linkedin.com/in/caio-martins-53a0601aa">Caio Martins </a> </p> <a href="https://www.linkedin.com/in/frederico-schur-6a3313237">Frederico Schur</a> </p> <a href="https://www.linkedin.com/in/victorbarq/">Isabela Rocha</a> </p> <a href="https://www.linkedin.com/in/leandro-custodio/">Leandro Oliveira</a> </p> <a href="https://www.linkedin.com/in/pablo-ruan-lana-viana-b0818b1a6/">Pablo Viana</a> </p> <a href="https://www.linkedin.com/in/rodrigo-moraes-martins-a81703202">Rodrigo Martins</a> </p> <a href="http://lattes.cnpq.br/8725830142676034">Thainá Lima</a>

## Descrição

Já imaginou como é ser o Presidente do Brasil? Se a resposta for sim, o "Eu, Presidente" oferece a experiência que até então só era possível num universo imaginário.

## Menu 

O jogo começa com a tela de menu, nesta o jogador pode escolher iniciar uma campanha através do botão "Novo Jogo" ou, caso tenha jogado anteriormente, pode pressionar "Carregar Jogo" e voltar para o último ponto em que parou na campanha. 
<br><br>
<p align="center">
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/Menu.png" border="0">
 <br><br>
 
## Cutscene
  
Após pressionar "Novo Jogo" o jogador será levado à uma cutscene que apresentará a backstory do jogo. A ideia principal é que o protagonista, Presidente, acaba de assumir seu mandato, contudo, em função de uma problema de memória, ele se esquece da constituição, das funções do poder executivo e até mesmo de que ele havia ganhado a eleição. 
<br><br>
  
<p align="center">
 <img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/cutscene.png" border="0">
 <br><br>
 
## Mapa do Brasil   
  
Após a cutscene o jogador será direcionado para o mapa do Brasil através do qual ele irá selecionar a região Sul e entrar na região da primeira fase. Caso ele tenha jogado anteriormente, mediante a progressão na campanha, ele poderá selecionar as demais regiões. 
<br><br> 
 
<p align="center">
 <img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/mapa%20do%20brasil.png" border="0">
 <br><br> 
  
## Mundo Aberto
  
Ao selecionar a fase o jogador será direcinado para o mundo aberto, sendo que neste ele irá se deparar com uma série de estruturas, tais como escola, prefeitura, mercado e afins. 
  
<p align="center">
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/mundo%20aberto.png" border="0">
<br><br>  
  
  

## 🛠 Estrutura de pastas

Raiz<br>
<br>
| Documentos<br>
  &emsp;|→ <a href="https://github.com/2022M1T3/Projeto4/tree/main/documentos/antigos"> Antigos </a><br>
  &emsp;|→ <a href="https://github.com/2022M1T3/Projeto4/tree/main/documentos"> GDD.docx e GDD.pdf </a><br>
| Executáveis<br>
  &emsp;|→ <a href="https://github.com/2022M1T3/Projeto4/tree/main/execut%C3%A1veis/Windows"> Windows </a><br>
  &emsp;|→ <a href="https://github.com/2022M1T3/Projeto4/tree/main/execut%C3%A1veis/Android"> Android </a><br>
  &emsp;|→ <a href="https://github.com/2022M1T3/Projeto4/tree/main/execut%C3%A1veis/HTML"> HTML </a><br>
|→ <a href="https://github.com/2022M1T3/Projeto4/tree/main/imagens"> Imagens </a><br>
|→ <a href="https://github.com/2022M1T3/Projeto4/tree/main/src/GameV32"> Source </a><br>
| Readme.md<br>

 
## 🛠 Instalação

<b>Windows:</b>

Não há instalação! Apenas executável!
Encontre o JOGO.exe na pasta executáveis e execute-o como qualquer outro programa.

```sh
Coloque código do prompt de comnando se for necessário
```

<b>HTML:</b>

Não há instalação!
Encontre o index.html na pasta executáveis e execute-o como uma página WEB (através de algum browser).

## 📈 Exemplo de uso
<br>
<p> Você pode adicionar novas perguntas no jogo adicionando um novo recurso na pasta perguntas e arrastalas para o recurso "db_jogo_perguntas" </p>
<br>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/rec.PNG"> 
<br>
<p> Para criar falas para novos npcs, você pode copiar e colar esta estrutura e definir novos Id's no script de NPC_TEXTO. </p>
<br>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/id_npc.PNG"> 
<br>
<p> Para ativar as caixas de texto adicionadas, coloque uma area 2d, e adicione o nó de body entered no script NPC_TEXTO </p>
<br>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/id_npc_2.PNG"> 
<br>
<p> *Para que não ocorram bugs, deixe a caixa de colisão na Layer 2, e deixe o Mask desabilitado, você pode encontrar esta opção selecionando o objeto em questão e
clicando no item Collision, localizado no canto direito da tela.
</p>
<br>

## 💻 Configuração para Desenvolvimento

<br>

Para abrir este projeto você necessita das seguintes ferramentas:

<a href="https://godotengine.org/download">GODOT</a>

<br>

<p> 1 - Vá para a parte à cima deste Readme </p>
<br>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/instalacao1.PNG"> 
<br>
<p> 2 - Clique no botão verde "Code" </p>
<p> 3 - Clique em "Download ZIP" </p>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/instalacao2.PNG"> 
<br>
<p> 4 - Após o download, procure este arquivo no seu explorador de arquivos </p>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/instalacao3.PNG"> 
<br>
<p> 5 - Crie uma pasta e coloque o zip instalado dentro da mesma </p>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/instalacao4.PNG"> 
<br>
<p> 6 - Extraia o zip dentro da pasta </p>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/instalacao5.PNG"> 
<br>
<p> 7 - Abra o Godot e procure este "menu", ele estará no canto superior direito da tela </p>
<p> 8 - Clique no Botão "Import" </p>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/instalacao6.PNG"> 
<br>
<p> 9 - Após se deparar com esta tela, clique na opção "importar" </p>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/instalacao7.PNG"> 
<br>
<p> 10 - Procure a pasta criada </p>
<p> 11 - Clique no botão "Abrir", ele estará no canto inferior esquerdo desta tela, após isso, abra a pasta Gamev51 </p>
<br>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/instalacao8.PNG"> 
<br>
<p> 12 - Encontre o arquivo Project.godot e abra-o </p>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/instalacao9.PNG"> 
<br>
<p> 13 - Clique em Importar e Editar </p>
<img src="https://github.com/2022M1T3/Projeto4/blob/main/imagens/instalacao10.PNG"> 
<p> 14 - Seja Feliz!!! 😃 </p>
<br>


## 🗃 Histórico de lançamentos

A cada atualização os detalhes devem ser lançados aqui.

* 0.2.1 - 13/04/2022
    * Adição de novos NPC's;
    * Adição do easter egg do cachorro caramelo;
    * Adição da tela de game-over;
    * Adição da tela de vitória na primeira fase;
    * Melhoria na linearidade da história;
    * Adição de evento queimada na floresta;
    * Adição do menu de pause;
    * Adição de intro do jogo;
    * Adição de botão mute;
    * Melhoria na movimentação do personagem no mini-game;
    * Melhoria nas sprites do mini-game;
    * Melhoria na qualidade das sprites no projeto;
    * Adição de mouses personalisados "Caneta e mão"

* 0.2.0 - 01/04/2022
    * Melhora no design do menu;
    * Adição de cena de escolha de fases "Mapa do Brasil";
    * Adição de efeitos sonoros;
    * Adição do mini-game
    * Adição de novos npcs
    * Adição objetivos no jogo "Cada pergunta do quiz é ativada ao interagir com portas específicas no mapa"
    * Melhoras no mapa do mundo aberto
    * Adição de Hud;
    * Adição de novas áreas exploráveis "Mercado, Escola e Prefeitura".
 
* 0.1.1 - 18/03/2022
    * Melhora na interface das perguntas;
    * Melhora no menu;
    * Adição de movimentação do personagem;
    * Primeira NPC "Ana" adicionada;
    * Adição da caixa de texto;
    * Adição dos limites do mapa.
   
* 0.1.0 - 04/03/2022
    * Adição do menu;
    * Adição do mundo aberto;
    * Adição do personagem controlável;
    * Adição de câmera que segue o jogador;
    * Adição de porta interagivel que mostra o quiz.
 
* 0.0.1 - 18/02/2022
    * Primeira versão do jogo, quiz de perguntas e respostas

## 📋 Licença/License

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/2022M1T3/Projeto4">EU, PRESIDENTE </a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://github.com/2022M1T3/Projeto4">INTELI, CAIO MARTINS DE ABREU, FREDERICO SCHUR, ISABELA AMADO DA ROCHA, LEANDRO DE OLIVEIRA CUSTÓDIO, PABLO RUAN LANA VIANA, RODRIGO MORAIS MARTINS, THAINÁ DE DEUS LIMA</a> is licensed under <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"></a></p>

## 🎓 Referências

Aqui estão as referências usadas no projeto.

- Readme Model:
1. <https://github.com/iuricode/readme-template>
2. <https://github.com/gabrieldejesus/readme-model>
3. <https://creativecommons.org/share-your-work/>

- Musicas:
1. https://opengameart.org/
2. https://www.youtube.com/watch?v=s68VO5zFxvM
3. https://www.youtube.com/watch?v=Qp-HS69UdtU]
4. https://opengameart.org/content/caketown-cuteplayful
5. https://opengameart.org/content/continue-theme
6. https://opengameart.org/content/platformer-jumping-sounds
7. https://opengameart.org/content/pencil-sounds
8. https://opengameart.org/content/4-chiptunes-adventure
9. https://opengameart.org/content/game-over-theme 

- Imagens
1. https://fazendoanossafesta.com.br/2018/02/alfabeto-minions.html/exclamacao-alfabeto-gratis-minions/
2. https://www.clubecuritibano.com.br/hotsite/transparencia/003-2/
3. https://esquilo.io/png/search/question
4. https://iconos8.es/illustrations/confirmado
5. https://freepikpsd.com/engrenagem-icon-png-transparent-images-free/153168/
6. https://pngtree.com/freepng/dog-barks-and-run-happily_7253654.html
7. https://emily2.itch.io/modern-city 
8. https://limezu.itch.io/moderninteriors 
9. http://clipart-library.com/png-clipart.html 
10. https://br.freepik.com/fotos-vetores-gratis/monument-brazil
11. https://colecciondegifs.blogspot.com/2016/10/imagenes-de-cohetes.html?m=1 
12. https://imgbb.com/nnrGnHS 
13. https://pngimg.com/image/83334 
