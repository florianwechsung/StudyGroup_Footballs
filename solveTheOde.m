function [] = solveTheOde()

clear all; 

tspan = [0 5];
xv0 = [0;0; 5; 5];
g = 9.8;


opts=odeset('Events',@stoppingevent,'OutputFcn',@odeplot);


[t,xv] = ode45(@(t,xv) dfdt(xv,g), tspan, xv0, opts);
close all;

plot(xv(:,1), xv(:,2))



