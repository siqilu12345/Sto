function wienerp
t0=1./16;
t1=t0/2;
t2=t0/4;
t3=t0/8;
f=@(z) 0;
g=@(z) 1;
w=t3.^0.5*randn(1./t3,1);
y3=euler_m(f,g,0,1,1./t3,w,0);
w=shortw(w);
y2=euler_m(f,g,0,1,1./t2,w,0);
w=shortw(w);
y1=euler_m(f,g,0,1,1./t1,w,0);
w=shortw(w);
y0=euler_m(f,g,0,1,1./t0,w,0);
y0(length(y0))
y1(length(y1))
y2(length(y2))
y3(length(y3))