-module(inicia_gauss).
-export([gauss/2]).

%Cambia de posición filas
gauss(_,[],_,_)->
[];
gauss(_,_,C,Tam)when C==Tam->
io:format("Error, no se puede encontrar solución~n");
gauss(I,[H=[0|_]|T],C,Tam)->
gauss(I,T++[H],C+1,Tam);
gauss(I,[H|T],_,Tam)->
gauss([H]++[I]++T,Tam).
gauss([H=[0|_]|T],Tam)->
gauss(H,T,0,Tam);
%Comienza con la eliminación de gauss jordan
gauss(R,Tam)->
proce_gauss:pos([],R,0,0,Tam).
