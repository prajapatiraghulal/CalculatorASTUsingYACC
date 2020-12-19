%{ 
#include<stdio.h>
#include<stdlib.h>

typedef struct node{
struct node *left;
struct node *right;
int x;
int sym;
}node;

node *mk(node *left , node *right, int num, int sym)
{
node *newnode = (node *) malloc (sizeof(node));
newnode->left = left;
newnode->right = right;
newnode->x = num;
newnode->sym = sym;
return (newnode);
}
void print(node *tree){
if(tree->left || tree->right) printf("(");
if(tree->sym == 1){
printf("%d  ", tree->x);}
else {  int symbol = tree->x; 
        printf(" %c ",symbol);}

if(tree->left!=NULL) {
    print(tree->left); }
if(tree->right!=NULL)
    { print(tree->right ); }
if(tree->right || tree->left) printf(")");
}
#define YYSTYPE struct node *
%}

%start lines
%token NUM END  
%left '+' '-'
%left '*' '/'
%right '^'

%% 
lines : 
    |lines line 
    ;
line : exp END		{ print($1);}
	;
exp : 	st 	{ $$ = $1 ;}
    |exp '+' exp{ $$ = mk($1, $3, '+',0);}
    |exp '-' exp{ $$ = mk($1, $3, '-',0);}
    |exp '*' exp{ $$ = mk($1, $3, '*',0);}
    |exp '/' exp{ $$ = mk($1, $3, '/',0);}
    |exp '^' exp{$$ = mk($1,$3, '^',0);}
	;
st : '(' st ')' { $$ = $2; }
    | NUM { $$= mk(NULL, NULL, (int)$1,1);}
    ;
%%
int main(void) {

yyparse();
return 0; }
int yyerror(char *s) { fprintf(stderr, "%s\n", s);}
