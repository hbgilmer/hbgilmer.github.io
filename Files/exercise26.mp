prologues := 3;
outputtemplate := "%j%c.eps";

verbatimtex
%&latex
\documentclass{amsart}
\begin{document}
etex


beginfig(1);
numeric t[],u,a,b;
path p[];  pair e, A[],T[];
 
u = 3cm;
a = 6; b = 3;
c = a*u; d = b*u;
p0 = (-infinity,0)--origin--(infinity,0);
p1 = fullcircle xscaled c yscaled d;
draw p0 dashed withdots;
clip currentpicture to p1;

p6 = p1 scaled 1.15;
p7 = p1 scaled 1.2;

e = origin + (-1,0)*sqrt(1 - (d/c)**2)*u;

A1 = point 0.1*length(p7) of p7;
A2 = point 0.2*length(p7) of p7;
A3 = point 0.35*length(p7) of p7;
A4 = point 0.45*length(p7) of p7;

A5 = point 0.1*length(p6) of p6;
A6 = point 0.2*length(p6) of p6;
A7 = point 0.35*length(p6) of p6;
A8 = point 0.45*length(p6) of p6;

p2 = e -- A1;
p3 = e -- A2;
p4 = e -- A3;
p5 = e -- A4;

t1 = xpart(p6 intersectiontimes p2);
t2 = xpart(p6 intersectiontimes p3);
t3 = xpart(p6 intersectiontimes p4);
t4 = xpart(p6 intersectiontimes p5);

p8 = subpath(t1,t2) of p6;
p9 = subpath(t3,t4) of p6;

fill buildcycle(p2, p1, p3) withcolor red+green;
fill buildcycle(p4, p1, p5) withcolor red+green;

draw p1;
draw p2 ;
draw p3;
draw p4;
draw p5;
drawarrow p8;
drawarrow p9;

A9 = point 0.5(t2 + t1) of p6;
A10 = point 0.5(t4 + t3) of p6;

dotlabel.bot(btex Sun etex, e) withpen pencircle scaled 4;
label.urt(btex $\Delta t$ etex, A9);
label.ulft(btex $\Delta t'$ etex, A10);
endfig;
end;