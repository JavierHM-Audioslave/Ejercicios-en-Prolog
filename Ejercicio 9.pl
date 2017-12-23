ventas1erSem(jose,21000).
ventas1erSem(hernan,10000).
ventas1erSem(pepito,30000).
ventas1erSem(san_martin,6000).
ventas1erSem(pavaroti,2000).
ventas2erSem(jose,30000).
ventas2erSem(hernan,25000).
ventas2erSem(pepito,5000).
ventas2erSem(piazzola,50000).
ventas2erSem(san_martin,8000).

grupoDel20(N,T):- ventas1erSem(N,T1), T1 >= 20000, ventas2erSem(N,T2), T2 >= 20000, T is (T1+T2)*0.2.

grupoDel10(N,T):- ventas1erSem(N,T1), ventas2erSem(N,T2), (T1 =< 20000; T2 =< 20000), T is (T1+T2)*0.2.

grupoDel5(X,T):- ( ventas1erSem(X,T1),not(ventas2erSem(X,_)), T is T1*0.05);( ventas2erSem(X,T2), not(ventas1erSem(X,_)), T is T2*0.05 ).
