figure(1);clf; %open figure one and clear any plots
x=[-1:.01:3];
y=log(1+x);  %the function
P2=x-x.^2 /2;   
P3=x-x.^2 /2  +x.^3 /3 ;   
% annotating the graph is always important
figure(1);clf; %open and clear the 1st figure
plot(x,y,x,P2,'--',x,P3,'-.')
legend('ln(1+x)','P_2','P_3')
xlabel('x')
title('The function and the 2^{nd} and 3^{rd} order Taylor Polynomials')
figure(2);clf; %open and clear the 2nd figure
plot(x,abs(y-P2),x,abs(y-P3),'--') % abs is the absolute value
legend('|ln(1+x)-P_2|','|ln(1+x)-P_3|')
xlabel('x')
title('Errors in the two Taylor Polynomials')
% Program output: