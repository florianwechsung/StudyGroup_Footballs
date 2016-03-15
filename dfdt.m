function dxv = dfdt(xv, g)
  dxv = zeros(4,1);
  dxv(1) = xv(3);
  dxv(2) = xv(4);
  dxv(3) = 0;
  dxv(4) = - g; 
end
