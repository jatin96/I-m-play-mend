%{
int consonants = 0;
%}
%%
[^A-Za-z] {continue;}
[^AEIOUWKYaeiouwky] {consonants++;}
.
%%

int yywrap(){}
int main(){

  yylex();
  printf("Number of consonants character %d\n",consonants);
  return 0;
}
