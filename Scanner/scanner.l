%{
#include <stdio.h>
%}
%option noyywrap

%%
int|bool         {printf("Token: Datatype - %s\n", yytext);}
print|true|false|if|else    {printf("Token: KEYWORD - %s\n", yytext);}

"//"(.)*\n                   {printf("Token:Single Line Comment - Lexeme:  %s\n",yytext);}

[A-Za-z][_a-zA-Z0-9]*	    {printf("Token: IDENTIFIER - Lexeme:  %s\n", yytext);}

"\""                          {printf("Token: QUOTATION - Lexeme:  %s\n", yytext);}

[0-9]+	                    {printf("Token: INTEGER_LITERAL - Lexeme:  %s\n", yytext);}
true|false                  {printf("Token: BOOLEAN_LITERAL - Lexeme:  %s\n", yytext);}

[*+-/]|==|!=                {printf("Token: OPERATOR - Lexeme:  %s\n", yytext);}

[(){}]                      {printf("Token: PARENTHESIS - Lexeme:  %s\n", yytext);}


"="	                        {printf("Token: ASSIGNMENT - Lexeme:  %s\n", yytext);}
";"	                        {printf("Token: DELIMITER- Lexeme:  %s\n", yytext);}

[ \t\n]					     ;
.							{printf("Invalid Token - Lexeme:  %s\n", yytext);}
[0-9][_a-zA-Z0-9]*			{printf("Invalid Token -  Lexeme:  %s\n", yytext);}


%%

int main() {
    yylex();
    return 0;
}
