function [] = solveTheOde()

clear all; 

g = 9.8;
m = 0.5;
rho = 1.2;
r = 0.11;
rev = 50;
coef = 0.47;
den = 1.2;

ux = 5;
uy = 5;

alpha = ux * rho * coef * pi * r^2 / (2 * m * g);
beta = 8/3 * ux * rho * pi * r^3 * rev / (m*g);
beta = 0.5 

tspan = [0 5];
xv0 = [0;0; ux; uy];

opts=odeset('Events',@stoppingevent,'OutputFcn',@odeplot);


[t,xv] = ode45(@(t,xv) dfdtNonDimensional(xv,alpha, beta), tspan, xv0, opts);
close all;

plot(xv(:,1), xv(:,2))



