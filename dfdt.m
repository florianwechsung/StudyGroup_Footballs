function dxv = dfdt(xv, Fmfunc, g)
  
  fm = Fmfunc(xv);

  dxv = zeros(4,1);
  dxv(1) = xv(3);
  dxv(2) = xv(4);
  dxv(3) = 0 + fm(1);
  dxv(4) = - g + fm(2); 
end
