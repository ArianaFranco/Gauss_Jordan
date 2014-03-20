-module(gauss).
-export([main/1]).
main(_,false)->
io:format("Error~n");
main(M,Tam)->
inicia_gauss:gauss(M,Tam).
main(Matriz)->
main(Matriz,tam_gauss:tam(Matriz)).
