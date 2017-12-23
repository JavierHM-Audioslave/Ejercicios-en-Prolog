mcd(X,X,X):-!.
mcd(X,Y,Z):- X<Y, Y1 is Y-X, mcd(X,Y1,Z),!.
mcd(X,Y,Z):- Y<X, mcd(Y,X,Z).
