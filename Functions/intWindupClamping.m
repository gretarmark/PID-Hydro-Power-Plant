function kc = intWindupClamping(error,u,u_sat)
% Anti-Reset Windup - Clamping

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Version 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%     if error >= 0
%         sign_error = 1;
%     else
%         sign_error = -1;
%     end
% 
%     if u >= 0
%         sign_u = 1;
%     else
%         sign_u = -1;
%     end



%     ss = (sign_error == sign_u);

%     if u ~= u_sat
%         diff = 1;
%     else
%         diff = 0;
%     end
    
%     kc = ~(ss && diff);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Version 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%     check = error * u;
% 
%     if check < 0
%         valCheck = 0;
%     else
%         valCheck = 1;
%     end
% 
%     if u ~= u_sat
%         diff = 1;
%     else
%         diff = 0;
%     end
% 
%     kc = valCheck && diff;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Version 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     if error >= 0
%         sign_error = 1;
%     else
%         sign_error = -1;
%     end
% 
%     if u >= 0
%         sign_u = 1;
%     else
%         sign_u = -1;
%     end
% 
%     ss = (sign_error == sign_u);
% 
%     if u == u_sat
%         diff = 1;
%     else
%         diff = 0;
%     end
%     
%     kc = (ss && diff);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Version 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% The first check is to check saturation
if u == u_sat
    diff = 0; % If the values are equal, then no saturation took place and output of the block is zero
elseif u ~= u_sat
    diff = 1; % If the values are not equal, then saturation took place and the block outputs a one
end

% The second check is to check the sign of the output and the sign of the
% error
if u >= 0
    sign_u = 1;
elseif u < 0
    sign_u = -1;
end

if error >= 0
    sign_error = 1;
elseif error < 0
    sign_error = -1;
end

if sign_u == sign_error
    signs = 1;
elseif sign_u ~= sign_error
    signs = 0;
end

% If we know that both the error and the controller output is positive,
% then we know that the integrator is adding to the output.
% If we know that both the error and the controller output is negative,
% then we know that the integrator is subtracting from the output.

% The clamping check: We want to check if the integrator is making things
% worse, i.e., if it is adding up or subtracting from the output. We want
% to check if the first check and the second check is active or not, this
% will control the clamping switch.

% And check: If the output is saturating and the signs are the same of
% error and u, and is set to 1 and clamping goes to 0.

if diff == 1 && signs == 1
    and_out = 1;
else
    and_out = 0;
end

if and_out == 1
    kc = 0;
elseif and_out == 0
    kc = 1;
end



end