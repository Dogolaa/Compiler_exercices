//definicoes

%%
//gramatica
S :'a' S 'c';
S : 'b';
%%
//codigo do usuario | bison -v -g -t g1.y -o g1.c | dot -tpng g1.gv -o g1.png