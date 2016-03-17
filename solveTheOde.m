%function [] = solveTheOde()

clear all; 

g = 9.8;
m = 0.5;
rho = 1.2;
r = 0.11;
rev = 3;
coef = 0.47;
den = 1.2;


tspan = [0 1];
xv0 = [0;0; 30; 0];


fmfunc = @(xv) F_magnussen(xv(1:2,:), xv(3:4,:), m, rho, r, rev);
dragfunc = @(xv) drag(coef,xv(3:4),den,m,r);



opts=odeset('Events',@stoppingevent,'OutputFcn',@odeplot);


[t,xv] = ode45(@(t,xv) dfdt(xv,fmfunc, dragfunc, g), tspan, xv0);
close all;

%plot(xv(:,1), xv(:,2), 'LineWidth', 2);



