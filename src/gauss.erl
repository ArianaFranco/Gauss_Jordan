-module(gauss).
-export([main/1]).
-import(tam_gauss,[tam/1]).
-import(inicia_gauss,[gauss/2]).
main(_,false)->
io:format("Error~n");
main(M,Tam)->
gauss(M,Tam).
main(Matriz)->
main(Matriz,tam(Matriz)).