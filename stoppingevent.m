function [value,isterminal,direction] = stoppingevent(t,xv)
% Locate the time when height passes through zero in a decreasing direction
% and stop integration.
value = xv(2); % detect y-1/2 = 0
isterminal = 1; % stop the integration
direction = -1; % negative direction

