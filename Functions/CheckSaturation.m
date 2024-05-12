function u_sat = CheckSaturation(u,gateMax,gateMin)
% Controller saturation check

    if u >= gateMax
        u_sat = gateMax;
    elseif u <= gateMin
        u_sat = gateMin;
    else
        u_sat = u;
    end
end