


m = 0.5;
rho = 1.2;
r = 0.11;
CD = 0.47;
omega = 3;
v = 30;
Kd = 1/(2*m) * rho * CD * pi * r^2;
Kl = 16/(3*m) * pi^2 * r^3 * omega * rho/v;

L2 = 30;
epsilon = Kd * L2;
L1 = Kl * L2^2;

T = 1;

t = 0:0.01:T;

x0 = (log(1 + t.*v*Kd)*Kl)/Kd^2 - (t*v*Kl)/Kd;
x1 = - t.*v*Kl/(Kd^2*L2) + v .* Kl * (-t + t.*log(1 + t.*v*Kd) + 2 * log(1+t.*v*Kd)/(v*Kd)   ) / (Kd^2 * L2);

x = x0 + epsilon * x1;

%y0 = v*t;
%y1 = -1/(2*L2)* v.^2 .* t.^2;
%y2 = (2*log(1+t.*v.*Kd) - t.*v.*Kd.*(2 - 2.*log(1 + t.*v.*Kd) + t.*v.*Kd)).*Kl.^3 / (2.*Kd^5.*L1) + t.^3.*v.^3/(3.*L2.^2);
%y = y0 + epsilon *y1 + epsilon^2 * y2;

y = 1/Kd * log(Kd .* t * v + 1);


