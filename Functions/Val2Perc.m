function [percent1 , percent2] = Val2Perc(Val,minVal, maxVal)
% percentage conversion

% Going from value to percentage
    percent1 = (Val - minVal) / (maxVal - minVal);
    percent2 = percent1 * 100;
end

function value = Perc2Val(Perc,minVal,maxVal)
% Going from percentage to value
    value = ((maxVal - minVal) * Perc) + minVal;
end