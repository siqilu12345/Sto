function plot_u(miu)
f=@(z) 0.5*miu.*z.^2+0.75.*z.^4-1/6.*z.^6+0.9*z;
ezplot(f,[-2,2])