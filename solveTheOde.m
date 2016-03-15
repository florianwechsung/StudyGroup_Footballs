function [] = solveTheOde()

clear all; 

g = 9.8;
m = 0.5;
rho = 1.2;
r = 0.11;
rev = 8;

tspan = [0 5];
xv0 = [0;0; 5; 5];


fmfunc = @(xv) F_magnussen(xv(1:2,:), xv(3:4,:), m, rho, r, rev);


opts=odeset('Events',@stoppingevent,'OutputFcn',@odeplot);


[t,xv] = ode45(@(t,xv) dfdt(xv,fmfunc, g), tspan, xv0, opts);
close all;

plot(xv(:,1), xv(:,2))



