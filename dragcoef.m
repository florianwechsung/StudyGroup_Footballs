function Cd=dragcoef(v1,L,nu)

v=norm(v1);
Re=(L*v)/nu;

if Re < 3*10^5
    Cd=0.47;
else
    Cd=0.2;
end
end

