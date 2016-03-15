function [ acc ] = F_magnussen( x, x_dot, m, rho, r, rev)
    G = rev*(2*pi*r)^2;
    % Note: We set L=r
    v = abs(x_dot);
    F_magnitude = rho*v*G*r;
    acc = (F_magnitude/m) * [-x_dot(2);x_dot(1)] / norm(x_dot);
end