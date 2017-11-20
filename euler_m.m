function y=euler_m(f,g,tmin,tmax,N,w,y0)
deltat=(tmax-tmin)/N;
y=zeros(N+1,1);
y(1)=y0;
for i=2:N+1 
    deltaw=w(i-1);
    y(i)=y(i-1)+f(y(i-1)).*deltat+g(y(i-1)).*deltaw;
end

