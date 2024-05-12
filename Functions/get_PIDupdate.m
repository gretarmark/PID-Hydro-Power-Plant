function [q_ie,q_P,q_I,q_u] = get_PIDupdate(error,ie,dt,kp,ki,Ti,op,DmaxTotal,Dmin)
    
    q_ie = ie + error*dt; % Integral

    q_P  = kp*error;      % Proportional update
    q_I  = (ki/Ti) * q_ie;  % Integral update (scaling)
    q_op = op + q_P + q_I;    % PI update


    % Anti-Reset Windup
    if q_op > DmaxTotal
        q_op = DmaxTotal;
        q_ie = q_ie - error*dt; % Anti-Reset Windup
    end

    if q_op < Dmin
        q_op = Dmin;
        q_ie = q_ie - error*dt; % Anti-Reset Windup
    end
    
    q_u = q_op; 

end