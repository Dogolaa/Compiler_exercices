%{
    int nlet, npal, nlin;
%}

%%

\n              {nlin++; nlet++;} 
[^ \t\n]+       {npal++, nlet += yyleng;}
.               {nlet++;}

%%

int yywrap () { 
    return 1;
    }

int main(void) {
    yylex();
    printf("Numero de caracteres: %d\n", nlet);
    printf("Numero de palavras: %d\n", npal);
    printf("Numero de linhas: %d\n", nlin);
    return 0;
}
