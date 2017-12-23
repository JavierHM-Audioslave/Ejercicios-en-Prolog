numero(1).
numero(2).
numero(3).

terna(X,Y,Z):- numero(X),numero(Y),numero(Z),!.


funcion(X,Y):- X<0, Y is -1*X.
funcion(X,0):- X==0.
funcion(X,X):- X>0.

productoCartesiano(X,Y):- numero(X),numero(Y).
seleccionMaximo(X,Y):- productoCartesiano(X,Y),X<Y.
proyeccionMaximo(X):- seleccionMaximo(X,_).
maximo(X):- numero(X),not(proyeccionMaximo(X)).

seleccionMinimo(X,Y):- productoCartesiano(X,Y),X>Y.
proyeccionMinimo(X):- seleccionMinimo(X,_).
minimo(X):- numero(X),not(proyeccionMinimo(X)).

ventas(enero,1342).
ventas(febrero,4231).
ventas(marzo,5121).
ventas(abril,5121).

productoCartesianoVentas(X,Y,W,Z):- ventas(X,Y),ventas(W,Z).
seleccionMaximoVentas(X,Y,W,Z):- productoCartesianoVentas(X,Y,W,Z),Y<Z.
proyeccionMaximoVentas(X,Y):- seleccionMaximoVentas(X,Y,_,_).
maximoVentas(X,Y):- ventas(X,Y),not(proyeccionMaximoVentas(X,Y)).


factorial(0,1):-!.
factorial(X,Y):- X1 is X-1,factorial(X1,Y1),Y is X*Y1.

fibonacci(0,1):-!.
fibonacci(1,1):-!.
fibonacci(X,Y):- X1 is X-1, X2 is X-2, fibonacci(X1,Y1),fibonacci(X2,Y2), Y is Y1+Y2.
