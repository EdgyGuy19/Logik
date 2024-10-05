/*
% uppgift 1 (4p)
% unifiering
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Betrakta denna fråga till ett Prologsystem:
?- T=f(a,Y,Z), T=f(X,X,b).
Vilka bindningar presenteras som resultat?
Ge en kortfattad förklaring till ditt svar!

Svar:
a = X
Y = a
Z = b

a är en konstant och vi sätter att X(variabel) har samma
värde som a. Därefter sätter vi Y(variabel) till samma
värde som X(variabel som är redan lika med a) och då får
den a som resultatet.
Z och b unifieras som vanligt

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% uppgift 2 (6p)
% representation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
En lista är en representation av sekvenser där
den tomma sekvensen representeras av symbolen []
och en sekvens bestående av tre heltal 1 2 3
representeras av [1,2,3] eller i kanonisk syntax '.'(1,'.'(2,'.'(3,[])))
Den exakta definitionen av en lista är:
list([]).
list([H|T]) :- list(T).
Vi vill definiera ett predikat som givet en lista som
representerar en sekvens skapar en annan lista som innehåller
alla element som förekommer i inlistan i samma ordning, men
om ett element har fōrekommit tidigare i listan skall det
inte vara med i den resulterande listan.
Till exempel:
?- remove_duplicates([1,2,3,2,4,1,3,4], E).
skall generera E=[1,2,3,4]
Definiera alltså predikatet remove_duplicates/2!
Förklara varför man kan kalla detta predikat för en funktion!

remove_duplicates([], []). %base case for recursion

remove_duplicates([H|T], Result) :-
    member(H,T), %check if the head exists in the rest of the list
    remove_duplicates(T, Result). %skipps if duplicate

remove_duplicates([H|T], [H|Y]) :- 
    \+member(H,T), %if not member of the list
    remove_duplicates(T, Y). %adds element to the list

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% uppgift 3 (6p)
% rekursion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Definiera predikatet partstring/3 som givet en lista som första
argument genererar en lista F med längden L som man finner
konsekutivt i den första listan!
Alla mōjliga svar skall kunna presenteras med hjälp av
backtracking om man begär fram dem.
Till exempel:
?- partstring( [ 1, 2 , 3 , 4 ], L, F).
genererar t.ex.F=[4] och L=1
eller F=[1,2] och L=2
eller också F=[1,2,3] och L=3
eller F=[2,3] och L=2
osv.
(Notera att t.ex. E=[1,2,4], L=3 ska inte finnas med som svar,
då 2 och 4 inte finns konsekutivt i listan [1,2,3,4].)
*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/*
append([],L,L).
append([H|T],L,[H|R]) :- append(T,L,R).
appendEl(X, [], [X]).
appendEl(X, [H | T], [H | Y]) :-
appendEl(X, T, Y).
length([],0).
length([_|T],N) :- length(T,N1), N is N1+1.
nth(N,L,E) :- nth(1,N,L,E).
nth(N,N,[H|_],H).
nth(K,N,[_|T],H) :- K1 is K+1, nth(K1,N,T,H).
subset([], []).
subset([H|T], [H|R]) :- subset(T, R).
subset([_|T], R) :- subset(T, R).
select(X,[X|T],T).
select(X,[Y|T],[Y|R]) :- select(X,T,R).
member(X,L) :- select(X,L,_).
memberchk(X,L) :- select(X,L,_), !.
*/


