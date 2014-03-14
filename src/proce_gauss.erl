-module(proce_gauss).
-export([pos/5]).
-include("../include/macros.hrl").

pos(_,Matriz,_,Tam,Tam)->
Matriz;

pos(M,[R|T],Pos,Pos,Tam)->
R1=[X*(1/num(R,0,Pos))||X<-R],
pos([],eli(R1,M++[R1]++T,Pos),0,Pos+?POS,Tam);
pos(M,[R|T],Aux,Pos,Tam)->
pos(M++[R],T,Aux+1,Pos,Tam).
%encontrar el pivote
num([H|_],Pos,Pos)->
H;
num([_|T],Aux,Pos)->
num(T,Aux+1,Pos).

%Rn-NRp, Rn=Fila actual, N=Nùmero pivote, Rp=Fila pivote
eli(R,[H|T],Pos) when H==R->
[R|eli(R,T,Pos)];
eli(R,[H|T],Pos)->
Tm=[X*num(H,0,Pos)||X<-R],
[ope(H,Tm)|eli(R,T,Pos)];
eli(_,[],_)->
[].

ope([H|T],[I|F])->
[H-I|ope(T,F)];
ope([],[])->
[].
