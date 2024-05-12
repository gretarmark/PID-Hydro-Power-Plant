function [D1,D2,D3] = percentOpening(u_per,table)
% Get openings of radial gates with respect to output of the controller in
% percentages
% The controller output has to be converted to percentages before it is
% used in this functin: u_per = (100/Dmax)*u_out;

[sa,~] = size(table);

if u_per == 100
    D1 = table(sa,2); D2 = table(sa,3); D3 = table(sa,4);
else
    for i=1:(sa-1)
        if u_per >= table(i,1) && u_per < table(i+1,1)
            D1 = table(i,2); D2 = table(i,3); D3 = table(i,4);
            break 
        end
    end
end

end