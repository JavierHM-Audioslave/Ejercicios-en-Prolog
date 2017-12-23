entrada(paella).
entrada(gazpacho).
entrada(consome).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

menuesCompletos(X,Y,Z):- entrada(X),(carne(Y);pescado(Y)),postre(Z).

menuesConConsome(consome,Y,Z):- menuesCompletos(consome,Y,Z).

menuesSinFlan(X,Y,Z):- menuesCompletos(X,Y,Z),dif(Z,flan).
