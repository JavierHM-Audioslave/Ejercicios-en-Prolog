triangulo(X,Y,Z,Res):- X\=Y, Y\=Z, X\=Z, Res is 1,!. %Escaleno%
triangulo(X,Y,Z,Res):- X==Y, Y==Z, Res is 2,!. %Equilatero%
triangulo(X,Y,Z,Res):- ((X==Y, Y\=Z);(X==Z, X\=Y)), Res is 3,!. %Isosceles%

esTriangulo(X,Y,Z,Res):- X<Y+Z, Y<X+Z, Z<X+Y, triangulo(X,Y,Z,Res1), Res is Res1.

