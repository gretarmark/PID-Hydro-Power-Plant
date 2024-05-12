function u_per = ControllerPercent(u_out,Dmax,Dmin)
% Convert controller output to 0-100%

if u_out < Dmin
    u = Dmin;
elseif u_out > Dmax
    u = Dmax;
else
    u = u_out;
end

u_per = ((u-Dmin)/(Dmax-Dmin)) * 100;

end