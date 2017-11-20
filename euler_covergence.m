function error=euler_covergence(f,g)
tmin=0;
tmax=0.5;
k=15;
N=2^k;
deltat=(tmax-tmin)/N;
y_tmax=zeros(k,1);
for i=1:500
    N=2^k;
    w=deltat^0.5.*randn(N,1);
    for j=1:k
        y=euler_m(f,g,tmin,tmax,N,w,10);
        y_tmax(j)=y_tmax(j)+y(length(y));
        N=N/2;
        w=shortw(w);
    end
end
y_tmax=y_tmax./1000;
y_tmax=flipud(y_tmax);
error=zeros(k-1,1);
for i=2:k
    error(i-1)=y_tmax(i)-y_tmax(i-1);
end

