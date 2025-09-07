clc;
clear all;
fx=input("Enter the function, F(X) = ","s");
f=eval(['@(x)',fx]);
a=input('Enter a=');
b=input('Enter b=');
s=1;
fprintf("N\t\t   a\t\t   b\t\t   x\t\t   f(x)\t\t   Error\n");
for k=1:100;
    x(k) = a-(f(a)*(b-a))/(f(b)-f(a));
    c=f(x(k));
    printf("%g\t %f\t %f\t %f\t %f\t %f\n",k,a,b,x(k),c,s);
    if(c>0)
        b=x(k);
    else
        a=x(k);
    end
    x(k+1) = a-(f(a)*(b-a)/f(b)-f(a));
    s = ((abs(x(k+a)-x(k)))/abs(x(k+1)))*100;
    if s<=.01
        break
    end
end
fprintf("\n\n The root is = %f", x(k));
