:- dynamic personagem/2.
:-[db].

sorteio(S):-
    random_between(1, 16, X),
    numero(X, S).


main:-
    sorteio(S),
    assertz(personagem(usuario, S)),
    sorteio(S1),
    assertz(personagem(computador,S1)).