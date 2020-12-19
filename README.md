# CalculatorASTUsingYACC
The code are ready to compile and execute using LINUX based operating system using predefined commands .install YACC AND LEX in order compile these files.
Do all below steps in directory where two code files are saved :

1) To install Lex package:
  sudo apt-get install flex
  or
  sudo apt-get install apt-get install flex-old
  (if asked for continueing type 'y' )

2) To install Yacc package:
  sudo apt-get install bison
  (if asked for confirmation type 'y' )
  
3) To use lex tool type:
  lex lex_file_name_with_extension
  
4) To use Yacc tool type:
  yacc -d yacc_file_name_with_extension
  
5) To compile and execute with c :
  cc lex.yy.c y.tab.c -ll

6) finally to check output type:
  ./a.out
  
  
  example with these two files, after installing yacc and lex in step 1 and 2 :
    lex abc.l
    yacc -d abc.y
    cc lex.yy.c y.tab.c -ll
    ./a.out
    
  Thanks:)
  
  
