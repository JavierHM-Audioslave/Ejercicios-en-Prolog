hombre(alfredo,alta,rubio,joven).      %Busca una como maria.%
hombre(oscar,baja,rubio,joven).        %Busca una como maria. %
hombre(jose,media,negro,joven).	       %Busca una como anastasia. %
hombre(juan,media,rubio,vieja).	       %Busca una como yanina. %
hombre(matias,baja,castaño,joven).     %Busca una como josefina. %
hombre(sebastian,baja,castaño,adulta). %Busca una como anastasia. %

mujer(josefina,alta,rubia,vieja).      %Busca uno como matias. %
mujer(yanina,alta,castaña,joven).      %Busca uno como juan. %
mujer(anastasia,baja,pelirrojo,adulta).%Busca uno como sebastian. %
mujer(maria,media,negro,joven).        %Busca uno como oscar. %

gusta(alfredo,clasica,aventura,tenis).
gusta(oscar,pop,ciencia-ficcion,natacion).
gusta(jose,jazz,policiaca,jogging).
gusta(juan,clasica,ciencia-ficcion,tenis).
gusta(matias,clasica,policiaca,tenis).
gusta(sebastian,pop,aventura,tenis).

gusta(josefina,jazz,aventura,natacion).
gusta(yanina,clasica,ciencia-ficcion,jogging).
gusta(anastasia,pop,aventura,tenis).
gusta(maria,jazz,ciencia-ficcion,jogging).

busca(alfredo,media,negro,joven).
busca(oscar,media,negro,joven).
busca(jose,baja,pelirrojo,adulta).
busca(juan,alta,castaña,joven).
busca(matias,alta,rubia,vieja).
busca(sebastian,baja,pelirrojo,adulta).
busca(josefina,baja,castaño,joven).
busca(yanina,media,rubio,vieja).
busca(anastasia,baja,castaño,adulta).
busca(maria,baja,rubio,joven).

matcheoPorFisico(X,Y):- !,hombre(X,_,_,_), busca(X,A,C,E), mujer(Y,A,C,E). % Para matcheo, tanto el hombre como la mujer se tienen que gustar mutuamente. %
matcheoTotal(X,Y):- matcheoPorFisico(X,Y), gusta(X,M,L,S), gusta(Y,M,L,S).
