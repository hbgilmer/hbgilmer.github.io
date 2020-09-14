prologues := 3;
outputtemplate := "%j%c.eps";

verbatimtex
%&latex
\documentclass{amsart}
\begin{document}
etex


beginfig(1);
u = 3cm;
xmin = -0.2;	xmax = 4;
ymin = -0.2;	ymax = 2;
pair p[];
p1 = (xmin,0)*u; p2 = (0,ymin)*u; p3 = (xmax,0)*u; p4 = (0,ymax)*u;

%pole at m_p
draw 0.2[p1,p3]--0.2[p1,p3]+0.75*p4 withpen pencircle scaled 1.5 withcolor blue;

%poles at bound states
pair pb;
pb = (1.2,0)*u;
draw pb -- pb + 0.25*p4 withpen pencircle scaled 1.2 withcolor red;
xinc := 0.1;
for x = xinc step xinc until 1.5:
	draw pb + (xinc,0)*u -- pb + (xinc,0)*u + 0.1*p4 withpen pencircle scaled 1.2 withcolor red;
	endfor;

%spectrum above 2m_p
path p;
xinc := 0.1;
p = (2,0)*u 
	for x= 2 + xinc step xinc until xmax - 1.75:
		..(x,0.75*sqrt(2*(x-2)))*u
	endfor;	
p5 = (xmax-0.1,0.3)*u;
fill buildcycle(p,p..{right}p5,p5--(p3 - (0.1,0)*u), (p3 - (0.1,0)*u)--((1.5,0)*u)) withcolor green;
draw p..{right}p5 withpen pencircle scaled 1.6 withcolor 0.6*green;

%labels
label.bot(btex $m_P$ etex, 0.2[p1,p3]) withcolor 0.75*blue;
label.bot(btex $2m_P$ etex, (2,0)*u) withcolor 0.6*green;
label.lft(btex $\rho$ etex, p4);
label.bot(btex $\sqrt{p^2}$ etex, p3);
label.top(btex \begin{tabular}{@{}c@{}} 1-particle \\ state \end{tabular} etex, 0.2[p1,p3]+0.75*p4) withcolor 0.75*blue;
label.top(btex \begin{tabular}{@{}c@{}} mass \\ gap \end{tabular} etex, 0.12[p1,p3]);
label.top(btex \begin{tabular}{@{}c@{}} bound \\ states \end{tabular} etex, pb + 0.25*p4) withcolor red;
\labeloffset := 0.25*u;
label.urt(btex \begin{tabular}{@{}c@{}} multi-\\ particle \\ continuum \end{tabular} etex, (2.25,0.75*sqrt(2*(2.25 - 2)))*u) withcolor 0.6*green;

%draw axes

drawarrow p1 -- p3;
drawarrow p2 -- p4;


endfig;
end;