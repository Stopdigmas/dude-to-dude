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
    read(Option),
    ler_caracteristica(Option, S).
    

ler_caracteristica(1, S):-
    write('Possui bigode ?'),nl,
    % EXEMPLO FACIL DE COMO FAZER A PERGUNTA, REPLICAR PARA AS OUTRAS CARACTERISTICAS.
    bigode(S).


ler_caracteristica(2,S):-
    nl,
    write('Qual a cor do olho?'),nl,
    write('1 - Castanho'),nl,
    write('2 - Azul'),nl,
    write('3 - Verde'),nl,
    write('4 - Amarelo'),nl,
    read(Option,S).

ler_caracteristica(3,S):-
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
    read(Option,S).

ler_caracteristica(4,S):-
    write('Possui barba?'),nl.

ler_caracteristica(5,S):-
    write('Qual a espécie?'),nl,
    write('1 - Humano'),nl,
    write('2 - Cachorro'),nl,
    write('3 - Gato'),nl,
    read(Option,S),
    ler_atributo(Option).

ler_caracteristica(6,S):-
    write('Qual o gênero?'),nl,
    write('1 - Masculino'),nl,
    write('2 - Feminino'),nl,
    read(Option,S).

ler_caracteristica(7,S):-
    write('Usa oculos?').

vez_do_usuario() :-
    write('').

main:-
    sorteio(S),
    assertz(personagem(usuario, S)),
    write('Tua cara é: '), write(S), nl,
    sorteio(S1),
    assertz(personagem(computador,S1)), 
    write('A cara do computador e: '), write(S1),
    mostra_menu(X, S).
