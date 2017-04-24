L = 4; esp0 = 8.85e-12; k = 1 /(4*pi*esp0);
Q=1*10^-3; a = 2; b =0; 
[x,y] = meshgrid(-2:0.2:2.2, .1:0.2:2); 
lambda = Q/L; syms X;
ra = sqrt((x-X).^2 +(y-a).^2);
rb = sqrt((x-X).^2 +y.^2);
Va = double(int(-lambda*k./ra,X,-L/2,L/2));
Vb = double(int(lambda*k./rb,X,-L/2,L/2));
V = Va+Vb;
[px,py]=gradient(V,0.1,0.1);
subplot (2,2,1)
contour (x,y,V)
subplot(2,2,2)
surf(x,y,V)
subplot(2,1,2) 
quiver (x,y,-px,-py,1) 