% Examples of each unconstrained multidimensional minimization algorithm

% Gradient Method
clear;
clc;
x = sym('x',[2 1]);                     
f = sym('f');                             
f(x) = 10*(x(2)-x(1)^2)^2 + (1-x(1))^2;
x0 = [-1.2;1];
fprintf("Result by Gradient Method:\n")
gradientMethod(f,x0,0.007,false)

% Newton's Method
x = sym('x',[2 1]);                     
f = sym('f');                             
f(x) = 10*(x(2)-x(1)^2)^2 + (1-x(1))^2;
x0 = [-1.2;1];
fprintf("\nResult by Newton's Method:\n")
newtonMethod(f,x0,0.0002,false)

% Quasi-Newton Method
x = sym('x',[2 1]);                     
f = sym('f');                             
f(x) = 10*(x(2)-x(1)^2)^2 + (1-x(1))^2;
x0 = [-1.2;1];
fprintf("\nResult by Quasi-Newton Method:\n")
quasiNewtonMethod(f,x0,0.0007)

