if_else(X,Y,_):- X,!,Y.
if_else(_,_,Z):-Z.
    
lista_computador(X):- computador(X).
lista_perguntas(X):- perguntas(X).

sorteio_pergunta():-
    lista_perguntas(Y),
    random_member(X, Y),
    deletar_perguntas(X, Y),
    pergunta_computador(X).
    
deletar_perguntas(X, Y):-
    delete(Y, X, L),
    retract(perguntas(Z)),
    assertz(perguntas(L)).

percorre_lista(Computador, OptionsToDelete, Novalista) :-
    length(OptionsToDelete, N),
    deletar_elemento(N, Computador, OptionsToDelete, Novalista).

deletar_elemento(0, Computador, _, _):-
    retract(computador(X)),
    assertz(computador(Computador)),
    vez_jogador.

deletar_elemento(N,Computador,OptionsToDelete, Novalista):-
    [HEAD | TAIL] = OptionsToDelete,
    delete(Computador, HEAD, L),
    percorre_lista(L, TAIL, L).

adivinhar(Computador) :-
    nth0(0, Computador, Resposta),
    cls,
    write('Já sei!!! Você é o(a) '),
    write(Resposta),
    write('! Acertei?'), nl, !.

pergunta_computador(1):-
    nl,
    write('COMPUTADOR: A cor do seu olho é castanha?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (olho(X,Y), Y \= castanho), OptionsToDelete),
        findall(X, (olho(X,Y), Y = castanho), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(2):-
    nl,
    write('COMPUTADOR: A cor do seu olho é azul?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (olho(X,Y), Y \= azul), OptionsToDelete),
        findall(X, (olho(X,Y), Y = azul), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(3):-
    nl,
    write('COMPUTADOR: A cor do seu olho é verde?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (olho(X,Y), Y \= verde), OptionsToDelete),
        findall(X, (olho(X,Y), Y = verde), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(4):-
    nl,
    write('COMPUTADOR: A cor do seu olho é amarela?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (olho(X,Y), Y \= amarelo), OptionsToDelete),
        findall(X, (olho(X,Y), Y = amarelo), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

% pergunta_computador SOBRE O CABELO
pergunta_computador(5):-
    write('COMPUTADOR: O seu cabelo ou pelo é castanho?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (cabelo(X,Y,_), Y \= castanho), OptionsToDelete),
        findall(X, (cabelo(X,Y,_), Y = castanho), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(6):-
    write('COMPUTADOR: O seu cabelo ou pelo é preto?'),
    read(Resposta),
        if_else(Resposta=sim,
        findall(X, (cabelo(X,Y,_), Y \= preto), OptionsToDelete),
        findall(X, (cabelo(X,Y,_), Y = preto), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(7):-
    write('COMPUTADOR: O seu cabelo ou pelo é loiro?'),
    read(Resposta),
        if_else(Resposta=sim,
        findall(X, (cabelo(X,Y,_), Y \= loiro), OptionsToDelete),
        findall(X, (cabelo(X,Y,_), Y = loiro), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).


pergunta_computador(8):-
    write('COMPUTADOR: O seu cabelo ou pelo é grisalho?'),
    read(Resposta),
        if_else(Resposta=sim,
        findall(X, (cabelo(X,Y,_), Y \= grisalho), OptionsToDelete),
        findall(X, (cabelo(X,Y,_), Y = grisalho), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).


pergunta_computador(9):-
    write('COMPUTADOR: O seu cabelo ou pelo é mesclado?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (cabelo(X,Y,_), Y \= mesclado), OptionsToDelete),
        findall(X, (cabelo(X,Y,_), Y = mesclado), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).


pergunta_computador(10):-
    write('COMPUTADOR: O seu cabelo ou pelo é amarelo?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (cabelo(X,Y,_), Y \= amarelo), OptionsToDelete),
        findall(X, (cabelo(X,Y,_), Y = amarelo), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).


pergunta_computador(11):-
    write('COMPUTADOR: O seu cabelo ou pelo é marrom?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (cabelo(X,Y,_), Y \= marrom), OptionsToDelete),
        findall(X, (cabelo(X,Y,_), Y = marrom), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(12):-
    write('COMPUTADOR: O seu cabelo ou pelo é longo?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (cabelo(X,_,Y), Y \= longo), OptionsToDelete),
        findall(X, (cabelo(X,_,Y), Y = longo), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).


pergunta_computador(13):-
    write('COMPUTADOR: O seu cabelo ou pelo é curto?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (cabelo(X,_,Y), Y \= curto), OptionsToDelete),
        findall(X, (cabelo(X,_,Y), Y = curto), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

% pergunta_computador ESPECIE
pergunta_computador(14):-
    write('COMPUTADOR: Você é uma pessoa?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (especie(X,Y), Y \= humano), OptionsToDelete),
        findall(X, (especie(X,Y), Y = humano), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(15):-
    write('COMPUTADOR: Você é um cachorro?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (especie(X,Y), Y \= cachorro), OptionsToDelete),
        findall(X, (especie(X,Y), Y = cachorro), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(16):-
    write('COMPUTADOR: Você é um gato?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (especie(X,Y), Y \= gato), OptionsToDelete),
        findall(X, (especie(X,Y), Y = gato), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

% pergunta_computador GENERO
pergunta_computador(17):-
    write('COMPUTADOR: Você é homem/ macho?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (genero(X,Y), Y \= masculino), OptionsToDelete),
        findall(X, (genero(X,Y), Y = masculino), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(18):-
    write('COMPUTADOR: Você é mulher/ fêmea?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (genero(X,Y), Y \= feminino), OptionsToDelete),
        findall(X, (genero(X,Y), Y = feminino), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(19):-
    write('COMPUTADOR: Você é professor?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (funcao(X,Y), Y \= professor), OptionsToDelete),
        findall(X, (funcao(X,Y), Y = professor), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(20):-
    write('COMPUTADOR: Você é aluno?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (funcao(X,Y), Y \= aluno), OptionsToDelete),
        findall(X, (funcao(X,Y), Y = aluno), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

pergunta_computador(20):-
    write('COMPUTADOR: Você é um animal de estimação?'),
    read(Resposta),
    if_else(Resposta=sim,
        findall(X, (funcao(X,Y), Y \= nada), OptionsToDelete),
        findall(X, (funcao(X,Y), Y = nada), OptionsToDelete)
    ),
    lista_computador(Computador),
    percorre_lista(Computador, OptionsToDelete, Novalista).

cls :- write('\33\[2J').
