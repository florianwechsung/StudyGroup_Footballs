function FD = drag(coef,vel,den,mass,rad)


FD=vel*(coef*0.5*den*pi*rad^2*vel^2)/mass*norm(vel);
