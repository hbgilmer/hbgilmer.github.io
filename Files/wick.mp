prologues :=3;
outputtemplate := "%j%c.eps";

verbatimtex
%&latex
\documentclass{amsart}
\begin{document}
etex

beginfig(1);
u := 1cm;
numeric xmin, xmax, ymin, ymax, xinc;
pair p[],O;
xmin := -4; xmax := 4;
ymin := -4; ymax := 4;
% draw axes
drawarrow (xmin - 0.3,0)*u -- (xmax + 0.3,0)*u;
drawarrow (0,-0.3+ymin)*u -- (0,ymax + 0.3)*u;

% draw tickmarks and labels 
for i= xmin upto xmax:
	label.bot("", (i,0)*u);
	draw (i,-0.05)*u--(i,0.05)*u;
endfor;
for i=ymin upto ymax: 
	label.lft("", (0,i)*u); 
	draw (-0.05,i)*u--(0.05,i)*u;
endfor;


draw (-2,1)*u + 0.2u*dir(45) -- (-2,1)*u + 0.2u*dir(225) withcolor red withpen pencircle scaled 1;
draw (-2,1)*u + 0.2u*dir(135) -- (-2,1)*u + 0.2u*dir(315) withcolor red withpen pencircle scaled 1;
draw (2,-1)*u + 0.2u*dir(45) -- (2,-1)*u + 0.2u*dir(225) withcolor red withpen pencircle scaled 1;
draw (2,-1)*u + 0.2u*dir(135) -- (2,-1)*u + 0.2u*dir(315) withcolor red withpen pencircle scaled 1;

% compute and draw graph
path P[];
p1 = (xmin + 0.1,0)*u;
p2 = (xmax - 0.1,0)*u;
p3 = (0,ymax - 0.1)*u;
p4 = (0,ymin + 0.1)*u;
O = (0,0);

P1 := p1 -- p2;
P2 := p2{dir(90)} ... p3;
P3 := p3 -- O;
P4 := O -- p4;
P5 := p4{dir(180)} ... p1;



draw P1 withcolor 0.5*green withpen pencircle scaled 1.5;
draw P2 withcolor 0.5*green withpen pencircle scaled 1.5;
draw P3 withcolor 0.5*green withpen pencircle scaled 1.5;
draw P4 withcolor 0.5*green withpen pencircle scaled 1.5;
draw P5 withcolor 0.5*green withpen pencircle scaled 1.5;


drawarrow subpath(0,1/4*length(P1)) of P1 withcolor 0.5*green;
drawarrow subpath(0,3/4*length(P1)) of P1 withcolor 0.5*green;
drawarrow subpath(0,1/2*length(P2)) of P2 withcolor 0.5*green;
drawarrow subpath(0,1/2*length(P3)) of P3 withcolor 0.5*green;
drawarrow subpath(0,1/2*length(P4)) of P4 withcolor 0.5*green;
drawarrow subpath(0,1/2*length(P5)) of P5 withcolor 0.5*green;



label.top(btex $-R$ etex, p1); 
label.bot(btex $R$ etex, p2); 
label.lft(btex $iR$ etex, p3);
label.rt(btex $-iR$ etex, p4);
\labeloffset := 0.3u;
label.top(btex $-\sqrt{p^2 - m^2} + i\epsilon$ etex, (-2u,u));
label.bot(btex $\sqrt{p^2 - m^2} - i\epsilon$ etex, (2u,-u));
endfig;

end;