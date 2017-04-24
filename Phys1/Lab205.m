a= -1;           % Left endpoint of integral
b= 5;           % Right endpoint
N = 64;         % The number of sub-intervals (|N| must be even for
h=(b-a)/N;
x= a:h:b;      % Creates a vector of N+1 evenly spaced points between |a| and |b|

f= exp(2*x);% The function to integrate
fun = @(x) exp(2*x);
Iexact = integral(fun,a,b);   % The exact integral

Itrapezoid=0;
Isimpson=0;

for k=1:N  %Note that the vector f has (N+1) elements
    Itrapezoid=Itrapezoid+h*(f(k)+f(k+1))/2;
end;

for k=1:(N/2)
    Isimpson=Isimpson + h/3*(f(2*k-1)+4*f(2*k)+ f(2*k+1));
end

fprintf('              Exact integral = %f.\n', Iexact)
fprintf('   Trapezoidal approximation = %f.\n',Itrapezoid);
fprintf('       Simpson approximation = %f.\n',Isimpson);

fprintf('\n')

fprintf('   Trapezoidal error = %f.\n',abs(Itrapezoid-Iexact));
fprintf('       Simpson error = %f.\n',abs(Isimpson-Iexact));
% Output from this program: