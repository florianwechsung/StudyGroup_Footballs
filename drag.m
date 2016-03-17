function FD = drag(vel,den,mass,rad,L,nu)


v=norm(vel);
Re=(L*v)/nu;

if Re < 3*10^5
    Cd=0.47;
else
    Cd=0.2;
end

FD=vel.*(Cd*0.5*den*pi*rad^2*norm(vel)^2)/(mass*norm(vel));





