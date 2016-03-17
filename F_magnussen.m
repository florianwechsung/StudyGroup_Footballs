
function [ acc ] = F_magnussen( x, x_dot, m, rho, r, rev, spin)
    G = rev*(2*pi*r)^2;
    % Note: We set L=r
    v = norm(x_dot);
    F_magnitude = rho*v*G*r;
    acc = (F_magnitude/m) * (cross(spin,x_dot)) / norm(x_dot)
end