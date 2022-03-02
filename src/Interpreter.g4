grammar Interpreter;
start :
 expression EOF
 ;
expression :
 | INT
 | expression (PLUS | MINUS | STAR | SLASH  ) expression
 | ID

 ;

fragment LETTER: ('a'..'z' | 'A'..'Z' );
fragment UNDER: '_';

ID : ( (LETTER+ | UNDER )  UNDER* ( LETTER* | INT+ ) )+;
PLUS : '+';
MINUS : '-';
STAR : '*';
SLASH : '/';
INT : '0'..'9'+;
SPACE: [ \t] -> skip;
COMMENT: '\\\\'+ ~[\n]* '\n'* -> skip;

