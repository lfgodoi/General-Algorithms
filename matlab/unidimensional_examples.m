% Dichotomous Search
clear;
clc;
syms f(x);
f(x) = x^2 + 2*x;
a = -3;
b = 5;
fprintf("Result by Dichotomous Search:\n")
dichotomousSearch(f,a,b,0.00001,false)

% Fibonacci Search
syms f(x);
f(x) = x^2 + 2*x;
a = -3;
b = 5;
fprintf("\nResult by Fibonacci Search:\n")
FibonacciSearch(f,a,b,13,f)

% Newton's Search
syms f(x);
f(x) = x^2 + 2*x;
fprintf("\nResult by Newton's Search:\n")
newtonSearch(f,0.2,false)

% Quadratic Regression
syms f(x);
f(x) = x^2 + 2*x;
pontos = [-3 1 5];
fprintf("\nResult by Quadratic Regression Search:\n")
quadraticRegressionSearch(f,pontos,0.000001,false)

