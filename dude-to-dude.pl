:- dynamic personagem/2.
:-[db].

sorteio(S):-
    random_between(1, 16, X),
    numero(X, S).

mostra_menu(Option,S):-
    nl,
    write('Dá o papo da tua característica: (Clica o número e adiciona o ponto depois, meu chegado!)'),nl,
    write('1 - Bigode'),nl,
    write('2 - Olhos'),nl,
    write('3 - Cabelo'),nl,
    write('4 - Barba'),nl,
    write('5 - Espécie'),nl,
    write('6 - Gênero'),nl,
    write('7 - Óculos'),nl,
    write('8 - Aluno'), nl,
    write('9 - Professor'), nl,
    read(Option),
    ler_caracteristica(Option, S).
    
ler_caracteristica(1, S):-
    write('Possui bigode ?'),nl,
    bigode(S).

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
    barba(S).

ler_caracteristica(5,S):-
    write('Qual a espécie?'),nl,
    write('1 - Humano'),nl,
    write('2 - Cachorro'),nl,
    write('3 - Gato'),nl,
    read(Option,S),
    pergunta_especie(Option,S).

ler_caracteristica(6,S):-
    write('Qual o gênero?'),nl,
    write('1 - Masculino'),nl,
    write('2 - Feminino'),nl,
    read(Option,S),
    pergunta_genero(Option,S).

ler_caracteristica(7,S):-
    write('Usa oculos?'),
    oculos(S).

ler_caracteristica(8,S):-
    write('E aluno?'),
    aluno(S).

ler_caracteristica(9,S):-
    write('E professor'),
    professor(S).

% PERGUNTA SORE OLHO
pergunta_cor_olho(1,S):-
    nl,
    write('A cor do olho e Castanho?'),
    olho(S,castanho).

pergunta_cor_olho(2,S):-
    nl,
    write('A cor do olho e Azul?'),
    olho(S,azul).

pergunta_cor_olho(3,S):-
    nl,
    write('A cor do olho e Verde?'),
    olho(S,verde).

pergunta_cor_olho(4,S):-
    nl,
    write('A cor do olho e Amarelo?'),
    olho(S,amarelo).

% PERGUNTA SOBRE O CABELO
pergunta_caracteristica_cabelo(1, S):-
    write('Possui cabelo Castanho?'),
    cabelo(S,castanho).

pergunta_caracteristica_cabelo(2, S):-
    write('Possui cabelo Preto?'),
    cabelo(S,preto).

pergunta_caracteristica_cabelo(3, S):-
    write('Possui cabelo Loiro?'),
    cabelo(S,loiro).

pergunta_caracteristica_cabelo(4, S):-
    write('Possui cabelo Grisalho?'),
    cabelo(S,grisalho).

pergunta_caracteristica_cabelo(5, S):-
    write('Possui cabelo Mesclado?'),
    cabelo(S,mesclado).

pergunta_caracteristica_cabelo(6, S):-
    write('Possui cabelo Amarelo?'),
    cabelo(S,amarelo).

pergunta_caracteristica_cabelo(7, S):-
    write('Possui cabelo Marrom?'),
    cabelo(S,marrom).

pergunta_caracteristica_cabelo(8, S):-
    write('Possui cabelo Longo?'),
    cabelo(S,longo).

pergunta_caracteristica_cabelo(9, S):-
    write('Possui cabelo Curto?'),
    cabelo(S,curto).

% PERGUNTA ESPECIE
pergunta_especie(1,S):-
    write('A especie e Humano?'),
    especie(S,humano).

pergunta_especie(2,S):-
    write('A especie e Cachorro?'),
    especie(S,cachorro).

pergunta_especie(3,S):-
    write('A especie e Gato?'),
    especie(S,gato).

% Pergunta GENERO
pergunta_genero(1,S):-
    write('O genero e masculino?'),
    genero(S,masculino).

pergunta_genero(2,S):-
    write('O genero e feminino?'),
    genero(S,feminino).

main:-
    sorteio(S1),
    sorteio(S),
    assertz(personagem(usuario, S1)),
    write('Tua cara é: '), write(S1), nl,
    assertz(personagem(computador,S)), 
    write('A cara do computador e: '), write(S),
    mostra_menu(X, S).
