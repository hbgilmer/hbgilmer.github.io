prologues := 3;
outputtemplate := "%j%c.eps";

verbatimtex
%&latex
\documentclass{apsart}
\begin{document}
etex

input feynmp;

beginfig(1);
u = 1cm;
numeric t[];
pair l[], r[], c[];
path P[];
l1 = (-1,0)*u; r1 = (1,0)*u; c1 = (0,0); c2 = (0,1)*u;

P1 = c1{dir(150)}...{down}l1...{dir(30)}c1;
P2 = c1{dir(30)}...{down}r1...{dir(150)}c1;
%draw_plain c1{dir(120)}...{right}c2...{dir(240)}c1;
%draw_plain c1{dir(60)}...{left}c2...{dir(300)}c1;

draw P1;
draw P2;

P3 = point 0.5 of P1 -- point 1.5 of P1;
P4 = point 0.5 of P2 -- point 1.5 of P2;

c3 = direction(0.35) of P1;
c4 = point(0.35) of P1;
c5 = point(0.35) of P2;

P5 = c4{dir(angle(c3) - 90)}...c5;

drawdblarrow subpath(0.1,0.9) of P3 withpen pencircle withcolor 0.6*green;
drawdblarrow subpath(0.1,0.9) of P4 withpen pencircle withcolor 0.6*green;
drawdblarrow subpath(0.1,0.9) of P5 withpen pencircle withcolor 0.6*green;


dotlabel("",c1);


endfig;
end;