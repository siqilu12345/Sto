function convergence_test
f=@(z) -4*z+0.1;
g1=@(z) 1;
g2=@(z) z;
dg2=@(z) 1;
error1=euler_covergence(f,g1);
error2=euler_covergence(f,g2);
error3=mil_conv(f,g2,dg2);
figure(1)
plot(log2(error1))
hold on
figure(2)
plot(log2(error2))
hold on
figure(3)
plot(log2(error3))
hold off