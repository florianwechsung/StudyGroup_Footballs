function [ acc ] = F_magnussen( x, x_dot, m, rho, r, rev)
    G = (rev*(2*pi*r)^2)/30;
    % Note: We set L=r
    v = norm(x_dot);
    F_magnitude = rho*G*r*(4/3);
    temp = (F_magnitude/m);
    acc = v*(F_magnitude/m) * [-x_dot(2);x_dot(1)];
end
