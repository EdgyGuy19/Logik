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

*/

