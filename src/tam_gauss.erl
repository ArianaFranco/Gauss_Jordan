-module(tam_gauss).
-export([tam/1]).
%verifica el tamaño de la matriz, sino es cuadrática manda un false. F=fila, C=columna.
tam([_|T],[],C,F)->
tam(T,[],C+1,F);
tam([],[],C,F) when C-1 == F ->
io:format("Matriz de ~p x ~p~n",[C-1,F]),F;
tam([],[],_,_)->
false;
tam([_|T1],[_|T2],C,F)->
tam(T1,T2,F+1,C+1).
tam([H|T])->
tam(H,[H|T],0,0).