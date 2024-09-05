%{
    int nlin = 0;
%}

%% //regra ------ acao
^(.*)\n   printf("%4d: %s", ++nlin, yytext);
%%

int yywrap () { 
    return 1;
    }

int main () {
    yylex();
}