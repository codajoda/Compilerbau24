grammar language;

// rules

// minimal expression 
start: questionMarkExpr EOF;

// start symbol
expr: questionMarkExpr;

// expressions
questionMarkExpr: andOrExpr (QUESTIONMARK questionMarkExpr DOUBLECOLON questionMarkExpr)*;

andOrExpr: cmpExpr;

cmpExpr: shiftExpr;

shiftExpr: bitAndOrExpr;

bitAndOrExpr: sumExpr;

sumExpr: mulDivExpr (SUMOP  mulDivExpr)*;

mulDivExpr: unaryExpr;

unaryExpr: dashExpr;

dashExpr: arrowExpr;

arrowExpr: parantheseExpr;

parantheseExpr: NUMBER;


// tokens
NUMBER: [0-9]+;

// questionMarkExpr tokens
QUESTIONMARK: '?';
DOUBLECOLON: ':';

// andOrExpr tokens

// cmpExpr tokens

// shiftExpr tokens

// bitAndOrExpr tokens

// sumExpr tokens
SUMOP: PLUS|MINUS;
PLUS: '+';
MINUS: '-';

// mulDivExpr tokens

// unaryExpr tokens

// dashExpr tokens

// arrowExpr tokens

// parantheseExpr tokens

// skip whitespaces
WS: [ \t\r\n]+ -> skip;

