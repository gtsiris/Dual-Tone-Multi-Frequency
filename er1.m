t = [-2:0.001:8];
x = @(t) t.*(t>=0 & t<1) + (1./2.*(3.-2.*t)).*(t>=1 & t<3);
x1 = x(t);
x2 = x(2.*t);
x3 = x(t./2);
subplot(311);plot(t,x1);
xlabel('t');
ylabel('x(t)');
subplot(312);plot(t,x2);
xlabel('t');
ylabel('x(2t)');
subplot(313);plot(t,x3);
xlabel('t');
ylabel('x(t/2)');