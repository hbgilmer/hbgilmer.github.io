prologues := 3;
outputtemplate := "%j%c.eps";

verbatimtex
%&latex
\documentclass{apsart}
\begin{document}
etex

beginfig(1);
pair A,B,C; u := 3cm;
A = u*dir(-30); B = u*dir(90); C = u*dir(210);

transform T;
A transformed T = 1/6[A,B];
B transformed T = 1/6[B,C];
C transformed T = 1/6[C,A];

path p; p = A--B--C--cycle;
for i = 0 upto 60:
	draw p; p:= p transformed T;
endfor;

endfig;



beginfig(2);
pair D,E,F,G,H;
D = u*dir(18); E = u*dir(90); F = u*dir(162); G = u*dir(234); H = u*dir(306);

transform Tt;
D transformed Tt = 1/6[D,E];
E transformed Tt = 1/6[E,F];
F transformed Tt = 1/6[F,G];

path P; P = D--E--F--G--H--cycle;
for i = 0 upto 60:
	draw P; P := P transformed Tt;
endfor;

endfig;


beginfig(3);
pair I,J,K,L,M,N,O,Q;
%I = u*dir(22.5); J = u*dir(67.5); K = u*dir(112.5); L = u*dir(157.5); M = u*dir(202.5); N = u*dir(247.5); O = u*dir(292.5); Q = dir(336.5);
I = u*dir(0); J = u*dir(45); K = u*dir(90); L = u*dir(135); M = u*dir(180); N = u*dir(225); O = u*dir(270); Q = u*dir(315);

transform t;
I transformed t = 1/6[J,I];
J transformed t = 1/6[K,J];
K transformed t = 1/6[L,K];

path Pp; Pp = I--J--K--L--M--N--O--Q--cycle;
for i = 0 upto 500:
	draw Pp; Pp := Pp transformed t;
endfor;

endfig;

end;