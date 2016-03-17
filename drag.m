function FD = drag(coef,vel,den,mass,rad)

temp_drag = (coef*0.5*den*pi*rad^2)/mass;
FD=vel.*norm(vel)*(coef*0.5*den*pi*rad^2)/mass;
