x = linspace(-20,20,1001);
y = 2.*sqrt(3+x.^2).^-1;
z = -1.*sqrt(2+x.^2).^-1;
plot(x,y,'*',x,z,'-');
axis([-30,30,-1,1.5])
xlabel('x value')
ylabel('y value')
title('Graph #2, Jaime Nufio')

