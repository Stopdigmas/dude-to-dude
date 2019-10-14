:- dynamic computador/1.
:- dynamic perguntas/1.
:- dynamic carta/1.
:-[db].
:-[computer].

lista_carta(X):- carta(X).

sorteio(S):-
    random_between(1, 16, X),
    numero(X, S).

mostra_menu(Option,S):-
    nl,
    write('Sobre qual característica você quer perguntar? (Digite o número correspondente a sua pergunta e o ponto)'),nl,
    write('1 - Bigode'),nl,
    write('2 - Olhos'),nl,
    write('3 - Cabelo/Pelo'),nl,
    write('4 - Barba'),nl,
    write('5 - Espécie'),nl,
    write('6 - Gênero'),nl,
    write('7 - Óculos'),nl,
    write('8 - Aluno'), nl,
    write('9 - Professor'), nl,
    write('10 - Animal'), nl,
    write('11 - ADIVINHAR'), nl,
    read(Option),
    lista_carta(X),
    ler_caracteristica(Option, X).
    
ler_caracteristica(1, S):-
    pergunta_bigode(S).

ler_caracteristica(2,S):-
    nl,
    write('O que você quer perguntar sobre a cor do olho?'),nl,
    write('1 - Castanho'),nl,
    write('2 - Azul'),nl,
    write('3 - Verde'),nl,
    write('4 - Amarelo'),nl,
    read(Option),
    pergunta_cor_olho(Option,S).

ler_caracteristica(3,S):-
    nl,
    write('O que você quer perguntar sobre o cabelo?'),nl,
    write('1 - Castanho'),nl,
    write('2 - Preto'),nl,
    write('3 - Loiro'),nl,
    write('4 - Grisalho'),nl,
    write('5 - Mesclado'),nl,
    write('6 - Amarelo'),nl,
    write('7 - Marrom'),nl,
    write('8 - Longo'),nl,
    write('9 - Curto'),nl,
    write('10 - Branco'),nl,
    read(Option),
    pergunta_caracteristica_cabelo(Option, S).

ler_caracteristica(4,S):-
    write('Você tem barba?'),nl,
    barba(S, sim).

ler_caracteristica(5,S):-
    write('Sobre qual espécie você quer fazer a pergunta?'),nl,
    write('1 - Humano'),nl,
    write('2 - Cachorro'),nl,
    write('3 - Gato'),nl,
    read(Option),
    pergunta_especie(Option,S).

ler_caracteristica(6,S):-
    write('Sobre qual gênero você quer perguntar?'),nl,
    write('1 - Masculino'),nl,
    write('2 - Feminino'),nl,
    read(Option),
    pergunta_genero(Option,S).

ler_caracteristica(7,S):-
    write('VOCÊ: Você usa óculos?'),nl,
    write('COMPUTADOR: '),
    if_else(oculos(S,sim), write('Sim, eu uso óculos!'), write('Eu não uso óculos não...')), nl,
    vez_computador.

ler_caracteristica(8,S):-
    write('VOCÊ: Você é aluno?'),nl,
    write('COMPUTADOR: '),
    if_else(funcao(S,aluno), write('Eu sou aluno(a) :D'), write('Não sou aluno!')), nl,
    vez_computador.

ler_caracteristica(9,S):-
    write('VOCÊ: Você é professor?'),nl,
    write('COMPUTADOR: '),
    if_else(funcao(S,professor), write('Sim, eu sou um(a) professor!'), write('Não sou professor...')), nl,
    vez_computador.

ler_caracteristica(10,S):-
    write('VOCÊ: Você é um animal de estimação?'),nl,
    write('COMPUTADOR: '),
    if_else(funcao(S,nada), write('Sim, eu sou um animal de estimação!'), write('Não sou animal de estimação...')), nl,
    vez_computador.

ler_caracteristica(11,S):-
    write('COMPUTADOR: Então você já sabe quem eu sou??? '),nl,
    write('Escreve meu nome então (exatamente igual ao papel, por favor!)'), nl,
    read(Adivinhar),
    if_else(Adivinhar = S, write('Você ganhou!'), errou).

errou :-
    write('Você não acertou!'),nl,
    vez_computador.

ganhou :-
    write('Você ganhou!'), nl,
    !.

% PERGUNTA SORE OLHO
pergunta_cor_olho(1,S):-
    nl,
    write('VOCÊ: A cor do seu olho é castanha?'),nl,
    write('COMPUTADOR: '),
    if_else(olho(S,olho), write('Sim, meu olho é castanho!'), write('Não, meu olho não é castanho :D')), nl,
    vez_computador.

pergunta_cor_olho(2,S):-
    nl,
    write('VOCÊ: A cor do seu olho é azul?'),nl,
    write('COMPUTADOR: '),
    if_else(olho(S,azul), write('Sim, meu olho é azul!'), write('Não, meu olho não é azul :D')), nl,
    vez_computador.

pergunta_cor_olho(3,S):-
    nl,
    write('VOCÊ: A cor do seu olho é verde?'),nl,
    write('COMPUTADOR: '),
    if_else(olho(S,verde), write('Sim, meu olho é verde!'), write('Não, meu olho não é verde :D')), nl,
    vez_computador.

pergunta_cor_olho(4,S):-
    nl,
    write('VOCÊ: A cor do seu olho é amarela?'),nl,
    write('COMPUTADOR: '),
    if_else(olho(S,amarelo), write('Sim, meu olho é amarelo!'), write('Não, meu olho não é amarelo :D')), nl,
    vez_computador.

% PERGUNTA SOBRE O CABELO
pergunta_caracteristica_cabelo(1, S):-
    write('VOCÊ: O seu cabelo ou pelo é castanho?'),nl,
    write('COMPUTADOR: '),
    if_else(cabelo(S,castanho,Y), write('Sim, meu cabelo é castanho :)'), write('Não não, meu cabelo não é castanho!')), nl,
    vez_computador.

pergunta_caracteristica_cabelo(2, S):-
    write('VOCÊ: O seu cabelo ou pelo é preto?'),nl,
    write('COMPUTADOR: '),
    if_else(cabelo(S,preto,Y), write('Sim, meu cabelo é preto :)'), write('Não não, meu cabelo não é preto!')), nl,
    vez_computador.

pergunta_caracteristica_cabelo(3, S):-
    write('VOCÊ: O seu cabelo ou pelo é loiro?'),nl,
    write('COMPUTADOR: '),
    if_else(cabelo(S,loiro,Y), write('Sim, meu cabelo é loiro :)'), write('Não não, meu cabelo não é loiro!')), nl,
    vez_computador.

pergunta_caracteristica_cabelo(4, S):-
    write('VOCÊ: O seu cabelo ou pelo é grisalho?'),nl,
    write('COMPUTADOR: '),
    if_else(cabelo(S,grisalho,Y), write('Sim, meu cabelo é grisalho :)'), write('Não não, meu cabelo não é grisalho!')), nl,
    vez_computador.

pergunta_caracteristica_cabelo(5, S):-
    write('VOCÊ: O seu cabelo ou pelo é mesclado?'),nl,
    write('COMPUTADOR: '),
    if_else(cabelo(S,mesclado,Y), write('Sim, meu cabelo ou pelo é mesclado :)'), write('Não não, meu cabelo não é mesclado!')), nl,
    vez_computador.

pergunta_caracteristica_cabelo(6, S):-
    write('VOCÊ: O seu cabelo ou pelo é amarelo?'),nl,
    write('COMPUTADOR: '),
    if_else(cabelo(S,amarelo,Y), write('Sim, meu cabelo ou pelo é amarelo :)'), write('Não não, meu cabelo não é amarelo!')), nl,
    vez_computador.

pergunta_caracteristica_cabelo(7, S):-
    write('VOCÊ: O seu cabelo ou pelo é marrom?'),nl,
    write('COMPUTADOR: '),
    if_else(cabelo(S,marrom,Y), write('Sim, meu cabelo ou pelo é marrom :)'), write('Não não, meu cabelo não é marrom!')), nl,
    vez_computador.

pergunta_caracteristica_cabelo(8, S):-
    write('VOCÊ: O seu cabelo ou pelo é longo?'),nl,
    write('COMPUTADOR: '),
    if_else(cabelo(S,Y,longo), write('É, o meu cabelo ou pelo é longo!'), write('Não tenho cabelo ou pelo longo!')), nl,
    vez_computador.

pergunta_caracteristica_cabelo(9, S):-
    write('VOCÊ: O seu cabelo ou pelo é curto?'),nl,
    write('COMPUTADOR: '),
    if_else(cabelo(S,Y,curto), write('É, o meu cabelo ou pelo é curto!'), write('Não tenho cabelo ou pelo curto!')), nl,
    vez_computador.

pergunta_caracteristica_cabelo(10, S):-
    write('VOCÊ: O seu cabelo ou pelo é branco?'),nl,
    write('COMPUTADOR: '),
    if_else(cabelo(S,Y,curto), write('É, o meu cabelo ou pelo é branco!'), write('Não tenho cabelo ou pelo branco!')), nl,
    vez_computador.

% PERGUNTA ESPECIE
pergunta_especie(1,S):-
    write('VOCÊ: Você é uma pessoa?'),nl,
    write('COMPUTADOR: '),
    if_else(especie(S,humano), write('Sim, eu sou uma pessoa!'), write('Não, eu não sou humano :P')), nl,
    vez_computador.

pergunta_especie(2,S):-
    write('VOCÊ: Você é um cachorro?'),nl,
    write('COMPUTADOR: '),
    if_else(especie(S,cachorro), write('Woof! Eu sou um cachorro!'), write('Não sou um cachorro...')), nl,
    vez_computador.

pergunta_especie(3,S):-
    write('VOCÊ: Você é um gato?'),nl,
    write('COMPUTADOR: '),
    if_else(especie(S,gato), write('Miau! Eu sou um gato!'), write('Não sou um gato...')), nl,
    vez_computador.

% Pergunta GENERO
pergunta_genero(1,S):-
    write('VOCÊ: Você é homem/ macho?'),nl,
    write('COMPUTADOR: '),
    if_else(genero(S,masculino), write('Sim, eu sou homem ou macho!'), write('Não, eu não sou homem/ macho.')), nl,
    vez_computador.

pergunta_genero(2,S):-
    write('VOCÊ: Você é mulher/ fêmea?'),nl,
    write('COMPUTADOR: '),
    if_else(genero(S,feminino), write('Sim, eu sou mulher ou fêmea!'), write('Não, eu não sou mulher/ fêmea.')), nl,
    vez_computador.

% Pergunta BIGODE
pergunta_bigode(S) :-
    write('VOCÊ: Você tem bigode?'),nl,
    write('COMPUTADOR: '),
    if_else(bigode(S, sim), write('Eu tenho bigode :^)'), write('Não tenho bigode!')), nl,
    vez_computador.

% Pergunta BIGODE
pergunta_barba(S) :-
    write('VOCÊ: Você tem barba?'),nl,
    write('COMPUTADOR: '),
    if_else(barba(S, sim), write('Eu tenho uma barba!'), write('Não tenho barba :(')), nl,
    vez_computador.

% Vez do jogador
vez_jogador :-
    write('********************'),nl,
    write('Sua vez!!!'),nl,nl,
    lista_carta(X),
    mostra_menu(Option, X),
    vez_computador.

% Vez do computador
vez_computador :-
    nl,
    write('********************'),nl,
    write('Vez do computador!!!'),nl,nl,
    write('COMPUTADOR: '),
    lista_computador(Computador),
    write(Computador),
    length(Computador, N),
    
    if_else(N = 1, adivinhar(Computador), sorteio_pergunta()).

main :-
    sorteio(S1),
    sorteio(S),
    assertz(carta(S)),
    retract(carta(inicio)),
    cls,
    write('Olá! Vamos jogar uma partida de cara a cara?'), nl,
    write('Funciona assim, eu vou receber uma carta e você vai receber outra.'),nl,
    write('Eu vou te apresentar uma série de perguntas sobre o meu personagem que você pode fazer para adivinhar quem sou eu.'),nl,
    write('Você pode também gastar sua vez para tentar adivinhar quem sou eu.'), nl,
    write('Eu vou te perguntar sobre você e você tem que me responder. Ganha quem adivinhar primeiro!'),nl,
    write('Pronto? (Digite \'sim.\' para começar!)'),nl,
    read(Resposta),
    cls,
    write('********************'),nl,   
    write('*** O seu personagem sorteado é: '), write(S1), write(' ***'), nl,
    assertz(personagem(computador,S)),
    vez_jogador.

cls :- write('\33\[2J').