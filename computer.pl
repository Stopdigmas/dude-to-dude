if_else(X,Y,_):- X,!,Y.
if_else(_,_,Z):-Z.
    
lista_computador(X):- computador(X).
lista_perguntas(X):- perguntas(X).

sorteio_pergunta(S):-
    lista_perguntas(Y)
    random_member(X, Y),
    pergunta_computador(X),
    delete(X, Y, L),
    retract(perguntas(X)),
    assertz(perguntas(L)).

percorre_lista(Computador, OptionsToDelete, Novalista) :-
    length(OptionsToDelete, N),
    deletar_elemento(N, Computador, OptionsToDelete, Novalista).

deletar_elemento(0,_, _, Novalista):-
    retract(computador(X)),
    assertz(computador(Novalista)).

deletar_elemento(N,Computador,OptionsToDelete, Novalista):-
    [HEAD | TAIL] = OptionsToDelete,
    delete(Computador, HEAD, L),
    percorre_lista(L, TAIL, L).

pergunta_computador(1):-
    nl,
    write('A cor do olho e Castanho?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (olho(X,Y), Y \= castanho), OptionsToDelete),
        findall(X, (olho(X,Y), Y = castanho), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(2):-
    nl,
    write('A cor do olho e Azul?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (olho(X,Y), Y \= azul), OptionsToDelete),
        findall(X, (olho(X,Y), Y = azul), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(3):-
    nl,
    write('A cor do olho e Verde?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (olho(X,Y), Y \= verde), OptionsToDelete),
        findall(X, (olho(X,Y), Y = verde), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(4):-
    nl,
    write('A cor do olho e Amarelo?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (olho(X,Y), Y \= amarelo), OptionsToDelete),
        findall(X, (olho(X,Y), Y = amarelo), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

% pergunta_computador SOBRE O CABELO
pergunta_computador(5):-
    write('Possui cabelo Castanho?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (cabelo(X,Y), Y \= castanho), OptionsToDelete),
        findall(X, (cabelo(X,Y), Y = castanho), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(6):-
    write('Possui cabelo Preto?'),
    read(Resposta),
        if_else(Resposta=sim,
        findall(X, (cabelo(X,Y), Y \= preto), OptionsToDelete),
        findall(X, (cabelo(X,Y), Y = preto), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista)

pergunta_computador(7):-
    write('Possui cabelo Loiro?'),
    read(Resposta),
        if_else(Resposta=sim,
        findall(X, (cabelo(X,Y), Y \= loiro), OptionsToDelete),
        findall(X, (cabelo(X,Y), Y = loiro), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).


pergunta_computador(8):-
    write('Possui cabelo Grisalho?'),
    read(Resposta),
        if_else(Resposta=sim,
        findall(X, (cabelo(X,Y), Y \= grisalho), OptionsToDelete),
        findall(X, (cabelo(X,Y), Y = grisalho), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).


pergunta_computador(9):-
    write('Possui cabelo Mesclado?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (cabelo(X,Y), Y \= mesclado), OptionsToDelete),
        findall(X, (cabelo(X,Y), Y = mesclado), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).


pergunta_computador(10):-
    write('Possui cabelo Amarelo?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (cabelo(X,Y), Y \= amarelo), OptionsToDelete),
        findall(X, (cabelo(X,Y), Y = amarelo), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).


pergunta_computador(11):-
    write('Possui cabelo Marrom?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (cabelo(X,Y), Y \= marrom), OptionsToDelete),
        findall(X, (cabelo(X,Y), Y = marrom), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(12):-
    write('Possui cabelo Longo?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (cabelo(X,Y), Y \= longo), OptionsToDelete),
        findall(X, (cabelo(X,Y), Y = longo), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).


pergunta_computador(13):-
    write('Possui cabelo Curto?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (cabelo(X,Y), Y \= curto), OptionsToDelete),
        findall(X, (cabelo(X,Y), Y = curto), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

% pergunta_computador ESPECIE
pergunta_computador(14):-
    write('A especie e Humano?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (especie(X,Y), Y \= humano), OptionsToDelete),
        findall(X, (especie(X,Y), Y = humano), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(15):-
    write('A especie e Cachorro?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (especie(X,Y), Y \= cachorro), OptionsToDelete),
        findall(X, (especie(X,Y), Y = cachorro), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(16):-
    write('A especie e Gato?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (especie(X,Y), Y \= gato), OptionsToDelete),
        findall(X, (especie(X,Y), Y = gato), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

% pergunta_computador GENERO
pergunta_computador(17):-
    write('O genero e masculino?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (genero(X,Y), Y \= masculino), OptionsToDelete),
        findall(X, (genero(X,Y), Y = masculino), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(18):-
    write('O genero e feminino?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (genero(X,Y), Y \= genero), OptionsToDelete),
        findall(X, (genero(X,Y), Y = genero), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).