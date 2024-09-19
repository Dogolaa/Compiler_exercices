%token INTEIRO

%%
S : INTEIRO S | ;
%%

//bison -v -d g3.y -o g3.c