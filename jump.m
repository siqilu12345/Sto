function jump(tstep,kasai)
deltat=1/tstep;
y0=-1.5;
recordy=zeros(100,1);
y_mean=zeros(100,1);
y_var=zeros(100,1);
i=1;
for miu=-3.5:1.3/99:-2.2
    f=@(z) miu.*z+3.*z.^3-z.^5+0.9;
    g=@(z) kasai;
    ylast=0;
    ym=0;
    yvar=0;
    cout=0;
    for j=1:500
        w=deltat.^0.5*randn(tstep,1);
        y=euler_m(f,g,0,1,tstep,w,y0);
        ylast=ylast+y(length(y));
        if max(y)<=1
            yvar=yvar+var(y)*length(y-1);
            ym=ym+mean(y);
            cout=cout+1;
        end
    end
    y0=ylast/500;
    recordy(i)=y0;
    if cout~=0
        y_var(i)=yvar/cout;
        y_mean(i)=ym/cout;
    end
    i=i+1;
end
miu=[-3.5:1.3/99:-2.2];
cut=10;
figure(1)
plot(miu(cut:100)',recordy(cut:100),miu(cut:100)',y_mean(cut:100), ...
    miu(cut:100)',y_var(cut:100))