%{ #include<stdio.h>
#include "y.tab.h"
%}

%%

[{}+-/*^()] {return yytext[0]; }

[0-9]+ { yylval = atoi(yytext); return NUM; }
";" {return END; }
[ \t\n] {;}
. { return 0; }
%%
