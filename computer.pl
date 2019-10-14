if_else(X,Y,_):- X,!,Y.
if_else(_,_,Z):-Z.

pergunta_computador_cor_olho(1,S):-
    nl,
    write('A cor do olho e Castanho?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (olho(X,Y), Y \= castanho), OptionsToDelete),
        findall(X, (olho(X,Y), Y = castanho), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).
    
lista_computador(X):- computador(X).
lista_perguntas(X):- perguntas(X).

percorre_lista(Computador, OptionsToDelete, Novalista) :-
    length(OptionsToDelete, N),
    deletar_elemento(N, Computador, OptionsToDelete, Novalista).

deletar_elemento(0,_, _, Novalista):-
    retract(computador(X)),
    assertz(computador(Novalista)),!.

deletar_elemento(N,Computador,OptionsToDelete, Novalista):-
    [HEAD | TAIL] = OptionsToDelete,
    nl,
    delete(Computador, HEAD, L),
    percorre_lista(L, TAIL, L).