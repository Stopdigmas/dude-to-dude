:- dynamic personagem/2.
:- dynamic computador/1.
:-[db].
:-[computer].

sorteio(S):-
    random_between(1, 16, X),
    numero(X, S).

mostra_menu(Option,S):-
    nl,
    write('Dá o papo da tua característica: (Clica o número e adiciona o ponto depois, meu chegado!)'),nl,
    write('1 - Bigode'),nl,
    write('2 - Olhos'),nl,
    write('3 - Cabelo/Pelo'),nl,
    write('4 - Barba'),nl,
    write('5 - Espécie'),nl,
    write('6 - Gênero'),nl,
    write('7 - Óculos'),nl,
    write('8 - Aluno'), nl,
    write('9 - Professor'), nl,
    read(Option),
    ler_caracteristica(Option, S).
    
ler_caracteristica(1, S):-
    pergunta_bigode(S).

ler_caracteristica(2,S):-
    nl,
    write('Qual a cor do olho?'),nl,
    write('1 - Castanho'),nl,
    write('2 - Azul'),nl,
    write('3 - Verde'),nl,
    write('4 - Amarelo'),nl,
    read(Option),
    pergunta_cor_olho(Option,S).

ler_caracteristica(3,S):-
    nl,
    write('Qual é a característica do cabelo?'),nl,
    write('1 - Castanho'),nl,
    write('2 - Preto'),nl,
    write('3 - Loiro'),nl,
    write('4 - Grisalho'),nl,
    write('5 - Mesclado'),nl,
    write('6 - Amarelo'),nl,
    write('7 - Marrom'),nl,
    write('8 - Longo'),nl,
    write('9 - Curto'),nl,
    read(Option),
    pergunta_caracteristica_cabelo(Option, S).

ler_caracteristica(4,S):-
    write('Possui barba?'),nl,
    barba(S, sim).

ler_caracteristica(5,S):-
    write('Qual a espécie?'),nl,
    write('1 - Humano'),nl,
    write('2 - Cachorro'),nl,
    write('3 - Gato'),nl,
    read(Option),
    pergunta_especie(Option,S).

ler_caracteristica(6,S):-
    write('Qual o gênero?'),nl,
    write('1 - Masculino'),nl,
    write('2 - Feminino'),nl,
    read(Option),
    pergunta_genero(Option,S).

ler_caracteristica(7,S):-
    write('Usa óculos?'),
    oculos(S, sim).

ler_caracteristica(8,S):-
    write('É aluno?'),
    funcao(S, aluno).

ler_caracteristica(9,S):-
    write('É professor?'),
    funcao(S, professor).

% PERGUNTA SORE OLHO
pergunta_cor_olho(1,S):-
    nl,
    write('A cor do olho e Castanho?'),
    if_else(olho(S,olho), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_cor_olho(2,S):-
    nl,
    write('A cor do olho e Azul?'),
    if_else(olho(S,azul), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_cor_olho(3,S):-
    nl,
    write('A cor do olho e Verde?'),
    if_else(olho(S,verde), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_cor_olho(4,S):-
    nl,
    write('A cor do olho e Amarelo?'),
    if_else(olho(S,amarelo), write('sim'), write('nao')), nl,
    vez_computador(S).

% PERGUNTA SOBRE O CABELO
pergunta_caracteristica_cabelo(1, S):-
    write('Possui cabelo Castanho?'),
    if_else(cabelo(S,castanho), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_caracteristica_cabelo(2, S):-
    write('Possui cabelo Preto?'),
    if_else(cabelo(S,preto), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_caracteristica_cabelo(3, S):-
    write('Possui cabelo Loiro?'),
    if_else(cabelo(S,loiro), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_caracteristica_cabelo(4, S):-
    write('Possui cabelo Grisalho?'),
    if_else(cabelo(S,grisalho), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_caracteristica_cabelo(5, S):-
    write('Possui cabelo Mesclado?'),
    if_else(cabelo(S,mesclado), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_caracteristica_cabelo(6, S):-
    write('Possui cabelo Amarelo?'),
    if_else(cabelo(S,amarelo), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_caracteristica_cabelo(7, S):-
    write('Possui cabelo Marrom?'),
    if_else(cabelo(S,marrom), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_caracteristica_cabelo(8, S):-
    write('Possui cabelo Longo?'),
    if_else(cabelo(S,longo), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_caracteristica_cabelo(9, S):-
    write('Possui cabelo Curto?'),
    if_else(cabelo(S,curto), write('sim'), write('nao')), nl,
    vez_computador(S).

% PERGUNTA ESPECIE
pergunta_especie(1,S):-
    write('A especie e Humano?'),
    if_else(especie(S,humano), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_especie(2,S):-
    write('A especie e Cachorro?'),
    if_else(especie(S,cachorro), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_especie(3,S):-
    write('A especie e Gato?'),
    if_else(especie(S,gato), write('sim'), write('nao')), nl,
    vez_computador(S).

% Pergunta GENERO
pergunta_genero(1,S):-
    write('O genero e masculino?'),
    if_else(genero(S,masculino), write('sim'), write('nao')), nl,
    vez_computador(S).

pergunta_genero(2,S):-
    write('O genero e feminino?'),
    if_else(genero(S,feminino), write('sim'), write('nao')), nl,
    vez_computador(S).

% Pergunta BIGODE
pergunta_bigode(S) :-
    write('Possui bigode?'),nl,
    if_else(bigode(S, sim), write('sim'), write('nao')), nl,
    vez_computador(S).

% Vez do jogador
vez_jogador(S) :-
    mostra_menu(Option, S),
    vez_computador(S).

% Vez do computador
vez_computador(S) :-
    nl,
    write('Vez do computador'), nl,
    lista_computador(Computador),
    write(Computador),
    length(Computador, N),
    
    if_else(N = 1, adivinhar(Computador), sorteio_pergunta(S)).

main() :-
    sorteio(S1),
    sorteio(S),
    assertz(personagem(usuario, S1)),
    write('Tua cara é: '), write(S1), nl,
    assertz(personagem(computador,S)), 
    write('A cara do computador e: '), write(S),
    vez_jogador(S).

cls :- write('\33\[2J').