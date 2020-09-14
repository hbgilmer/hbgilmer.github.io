prologues :=3;
outputtemplate := "%j%c.eps";

verbatimtex
%&latex
\documentclass{amsart}
\begin{document}
etex

input feynmp

beginfig(1);

u = 4cm;
pair c, l[], r[];
c = origin;
l1 = u*dir(180);
l2 = 0.5u*dir(180);
r1 = u*dir(30); r2 = 0.5u*dir(30); r3 = u*dir(0); r4 = u*dir(-30);

dotlabel("",c);
dotlabel.bot(btex $\mu$ etex, l2);
dotlabel.lrt(btex $\nu$ etex, r2);
label.lft(btex $u$ etex, l1);
label.urt(btex $d$ etex, r1);
label.lrt(btex $e^-$ etex, r4);
label.rt(btex $\bar{\nu}_e$ etex, r3);

draw_fermion l1--l2;
draw_fermion l2--c;
draw_fermion c--r2;
draw_fermion r2--r1;
draw_fermion r4--c;
draw_plain c--r3;
draw_photon l2{up}...r2;


endfig;
end;