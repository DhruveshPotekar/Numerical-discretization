clear all
close all
clc 

x = pi/3;

% function f(x)= sin(x)/x^3

% Analytical derivative 
% f'(x) = (x^3*(cos(x)) - 3*(sin(x))*x^2)/x^6

analytical_derivative = (x^3*(cos(x)) - 3*(sin(x))*x^2)/x^6 ; 


dx = pi/40;

% Numerical derivative 
% forward differencing = (f(x+dx) - f(x))/dx

% first order approximation 
forward_differencing = ((sin(x+dx)/(x+dx)^3) - (sin(x)/(x)^3))/dx ;


% central differencing = (f(x+dx) - f(x-dx))/2*dx

% second order approximation
central_differencing = ((sin(x+dx)/(x+dx)^3) - (sin(x-dx)/(x-dx)^3))/(2*dx) ; 


error_first_order = abs(forward_differencing - analytical_derivative);

error_second_order = abs(central_differencing - analytical_derivative);

A=['analytical derivative is ',num2str(analytical_derivative)];
disp(A)
B=['forward differencing method gives ',num2str(forward_differencing)];
disp(B)
C=['central differencing method gives ',num2str(central_differencing)];
disp(C)



