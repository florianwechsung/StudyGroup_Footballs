function dxv = dfdt(xv, Fmfunc, DragFunc, g)
  
  fm = Fmfunc(xv);
  drag = DragFunc(xv);

  dxv = zeros(4,1);
  dxv(1) = xv(3);
  dxv(2) = xv(4);
  
  dxv(3) = 0 + fm(1) - drag(1);
  dxv(4) = 0 + fm(2) - drag(2); 
end
