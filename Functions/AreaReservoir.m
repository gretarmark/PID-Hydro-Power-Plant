function Area = AreaReservoir(H)
    % Area of the reservoir is approximated as a linear function with slope
    % of a = 0.5 and bias of 54.2.
    Area = (0.5*H-54.2) * 1000^2;

%     if H < 116
%         Area = 3.8 * 1000^2;
%     elseif H > 117
%         Area = 4.3 * 1000^2;
%     else
%         Area = (0.5*H-54.2) * 1000^2;
%     end
end