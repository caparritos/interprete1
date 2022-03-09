grammar Interpreter;
start :
 expression EOF
 ;
expression :
 | INT
 | expression (PLUS | MINUS | STAR | SLASH  ) expression
 | EXC
 | EXB
 //| EXA


 ;

fragment LETTER: ('a'..'z' | 'A'..'Z' );
fragment UNDER: '_';

//ID : ( (LETTER+ | UNDER )  UNDER* ( LETTER* | INT+ ) )+;
PLUS : '+';
MINUS : '-';
STAR : '*';
SLASH : '/';
INT : '0'..'9'+;
SPACE: [ \t] -> skip;
COMMENT: '\\\\'+ ~[\n]* '\n'* -> skip;
fragment C_PARCIAL : ('b'*'a''b'*'a''b'*);
EXC : 'b'* C_PARCIAL 'b'*;
//EXB : 'a'*'b'*'c'*'d'*'e'*'f'*'g'*'h'*'i'*'j'*'k'*'l'*'m'*'n'*'o'*'p'*'q'*'r'*'s'*'t'*'u'*'v'*'w'*'x'*'y'*'z'*;


