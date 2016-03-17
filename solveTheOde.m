clear all;

L=0.22;
nu=1.98*10^-5;
g = 9.81;
m = 1;
rho = 1.2;
r = 0.11;
rev = 8;
spin = [0;-1;0];
%coef = 0.47;
den = 1.2;

%simulating of (x,y,z) plane

tspan = [0 5];
xv0 = [0;0;0; 25;0;3];

fmfunc = @(xv) F_magnussen(xv(1:3,:), xv(4:6,:), m, rho, r, rev,spin);
dragfunc = @(xv) drag(xv(4:6),den,m,r,L,nu);
opts=odeset('Events',@stoppingevent);
[t,xv] = ode45(@(t,xv) dfdt(xv,fmfunc, dragfunc, g), tspan, xv0, opts);
close all;

plot3(xv(:,1),xv(:,2),xv(:,3),'b*')
xlabel('X')
ylabel('Y')
zlabel('Z')
