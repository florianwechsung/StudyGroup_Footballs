function FD = drag2(vel,den,mass,rad)

if norm(vel)<9
    coef=0.47;
else
    coef=0.3;
end

FD=vel.*(coef*0.5*den*pi*rad^2*norm(vel)^2)/(mass*norm(vel));

end