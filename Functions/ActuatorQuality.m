function [Dx_count,Dx_count_i,quality] = ActuatorQuality(Dx,DxLast,i,Dx_count,Dx_count_i,quality,Nsim,Dsyni,DsyniError)

% if i < 3
%     Dx_count_out = 0;
% end

diff = abs(Dx - DxLast);

% if diff ~= 0 && (i > 373646)
% if (diff ~= 0) && (abs(diff) > 0.00005) && (i > 321390)
% if (diff ~= 0) && (abs(diff) >= 0.0004)
% if diff ~= 0
if diff >= (Dsyni-DsyniError)
    Dx_count = Dx_count + 1;
else
    Dx_count = Dx_count;
end

if i == Nsim-1
% if i == 401517
    quality = (Dx_count/Nsim)*100; % Percent
    Dx_count_i = Dx_count;
else
    quality = quality;
    Dx_count_i = Dx_count_i;
end

end