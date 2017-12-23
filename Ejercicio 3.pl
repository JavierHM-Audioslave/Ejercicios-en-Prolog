hombre(pedro) .
hombre(manuel) .
hombre(arturo) .

mujer(mar�a).

padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, mar�a) .

ni�o(X,Y):- padre(Y,X).

hijo(X,Y):- padre(Y,X),hombre(X).

hija(X,Y):- padre(Y,X),mujer(X).

hermanoOHermana(X,Y):- (hijo(X,Z),hija(Y,Z));(hija(X,Z),hijo(Y,Z)).

hermano(X,Y):- ((hijo(X,Z),hijo(Y,Z));(hijo(X,Z),hija(Y,Z))),dif(X,Y).

hermana(X,Y):- ((hija(X,Z),hijo(Y,Z));(hija(X,Z),hija(Y,Z))),dif(X,Y).
