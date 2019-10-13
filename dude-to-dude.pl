:- dynamic personagem/2.
:-[db].

sorteio(S):-
    random_between(1, 16, X),
    numero(X, S).

mostra_menu(X):-
    write('Dá o papo da tua característica: (Clica o número)'),
    write('1 - Bigode'),
    write('2 - Olhos'),
    write('3 - Cabelo'),
    write('4 - Barba'),
    write('5 - Espécie'),
    write('6 - Gênero'),
    write('7 - Óculos'),
    read(Option),
    ler_caracteristica(Option).

ler_caracteristica(1).
ler_caracteristica(2):-
    write('Qual a cor do olho?'),
    write('1 - Castanho'),
    write('2 - Azul'),
    write('3 - Verde'),
    write('4 - Amarelo'),
    read(Option),
    ler_atributo(Option).

ler_caracteristica(3):-
    write('Qual é a característica do cabelo?'),
    write('1 - Castanho'),
    write('2 - Preto'),
    write('3 - Loiro'),
    write('4 - Grisalho'),
    write('5 - Mesclado'),
    write('6 - Amarelo'),
    write('7 - Marrom'),
    write('8 - Longo'),
    write('9 - Curto'),
    read(Option),
    ler_atributo(Option).

ler_caracteristica(4).
ler_caracteristica(5):-
    write('Qual a espécie?'),
    write('1 - Humano'),
    write('2 - Cachorro'),
    write('3 - Gato'),
    read(Option),
    ler_atributo(Option).

ler_caracteristica(6):-
    write('Qual o gênero?'),
    write('1 - Masculino'),
    write('2 - Feminino'),
    read(Option),
    ler_atributo(Option).

ler_caracteristica(7).

vez_do_usuario() :-
    write('').

main:-
    sorteio(S),
    assertz(personagem(usuario, S)),
    sorteio(S1),
    assertz(personagem(computador,S1)),
    write('Tua cara é: '), write(S).