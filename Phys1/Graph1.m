x = -2;
Tol = 0.0000001;
count = 0;
dx=1;   %this is a fake value so that the while loop will execute
f=-13;    % because f(-2)=-13
fprintf('step      x           dx           f(x)\n')
fprintf('----  -----------  ---------    ----------\n')
fprintf('%3i %12.8f %12.8f %12.8f\n',count,x,dx,f)
xVec=x;fVec=f;
while (dx > Tol || abs(f)>Tol)  %note that dx and f need to be defined for this statement to proceed
    count = count + 1;
    fprime = 3*x^2 + 3;
    xnew = x - (f/fprime);   % compute the new value of x
    dx=abs(x-xnew);          % compute how much x has changed since last step
    x = xnew;
    f = x^3 + 3*x + 1;       % compute the new value of f(x)
    fprintf('%3i %12.8f %12.8f %12.8f\n',count,x,dx,f)
end
