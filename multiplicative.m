function multiplicative
f=@(z) -4*z+0.1;
g=@(z) z;
tmin=0;
tmax=3;
N=1000;
deltat=(tmax-tmin)./N;
w1=deltat.^0.5*randn(N,1);
w2=deltat.^0.5*randn(N,1);
w3=deltat.^0.5*randn(N,1);
w4=deltat.^0.5*randn(N,1);
w5=deltat.^0.5*randn(N,1);
y1=euler_m(f,g,tmin,tmax,N,w1,3);
y2=euler_m(f,g,tmin,tmax,N,w2,3);
y3=euler_m(f,g,tmin,tmax,N,w3,3);
y4=euler_m(f,g,tmin,tmax,N,w4,3);
y5=euler_m(f,g,tmin,tmax,N,w5,3);
figure(1)
plot(y1)
hold on
figure(2)
plot(y2)
hold on
figure(3)
plot(y3)
hold on
figure(4)
plot(y4)
hold on
figure(5)
plot(y5)
hold off