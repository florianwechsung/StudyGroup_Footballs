function dxv = dfdtNonDimensional(xv, alpha, beta)

dxv = zeros(4,1);
dxv(1) = xv(3);
dxv(2) = xv(4);
dxv(3) = 0 - xv(1) * sqrt(xv(1)^2 + xv(2)^2) * alpha - xv(2) * beta;
dxv(4) = -1 - xv(2) * sqrt(xv(1)^2 + xv(2)^2)* alpha + xv(1) * beta;
