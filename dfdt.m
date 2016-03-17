function dxv = dfdt(xv, Fmfunc, DragFunc, g)

  fm = Fmfunc(xv);
  drag = DragFunc(xv);

  dxv = zeros(6,1);
  dxv(1) = xv(4);
  dxv(2) = xv(5);
  dxv(3) = xv(6);
  dxv(4) = fm(1) - drag(1);
  dxv(5) = fm(2) - drag(2);
  dxv(6) = -g + fm(3) - drag(3);
end