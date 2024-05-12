function [q_samples,q_samples_H,q_samples_D,q_Nsim,q_DsyniG,q_DsyniS,q_DsyniF] = get_TimeData(i_sec,i_min,i_hours,i_days,i_xLokaG,i_xLokaS,i_xLokaF,i_dt)

% Fall til að fá tímagögn til hermunar
% Inputs: 
%   i_sec:   heildar sekúndur
%   i_min:   heildar mínútur
%   i_hours: heildar klukkustundir
%   i_days:  heildarfjöldi daga
%   i_freq:  Ósktíðni
%   i_xLoka: Opnun loku m.v. tíma (1m/min)
% Outputs:
%   q_Fs:        Söfnunartíðni
%   q_dt:        Lengd tímaskrefa
%   q_samples:   Fylki sem inniheldur sýni yfir heildarlengd hermunars
%   q_samples_H: Fylki sem inniheldur sýni fyrir klukkustund 
%   q_samples_D: Fylki sem inniheldur sýni fyrir dag
%   q_Nsim:    Lengd hermunar (lengd sýnafylkis)
%   q_Dsyni:   Hámarks opnun loku í metrum í hverju sýni

t0      = 0.0;      % [s] Upphafstími

days    = i_days;
hours   = i_hours;
minutes = i_min;
seconds = i_sec;

% Því stærra sem i_freq er, því minna verður hvert tímaskref i_dt.
% Samkvæmt Nyquist theorem þarf söfnunartíðnin q_Fs að vera a.m.k.
% tvisvar sinnum uppgefin tíðni F_freq til að koma í veg fyrir aliasing.
% F_freq = i_freq;    % Tíðni
% q_Fs = 2*F_freq;    % Söfnunartíðni
% q_dt = 1/q_Fs;      % Lengd tímaskrefa

if days == 0 && hours ~= 0 && minutes ~= 0 && seconds ~= 0
    Finaltime = seconds*minutes*hours;      % [s] Lokatími
elseif days == 0 && hours == 0 && minutes ~= 0 && seconds ~= 0
    Finaltime = seconds*minutes;            % [s] Lokatími
elseif days == 0 && hours == 0 && minutes == 0 && seconds ~= 0
    Finaltime = seconds;                    % [s] Lokatími
else
    Finaltime = seconds*minutes*hours*days; % [s] Lokatími
end

q_samples = (t0:i_dt:Finaltime-i_dt); % [samples] sýnafylki (Sample instants)
q_Nsim    = length(q_samples);        % Lengd sýnafylkis

% Samples to Hours and days
q_samples_H = (q_Nsim/i_days)/i_hours;
q_samples_D = q_Nsim/i_days;

q_DsyniG = (i_xLokaG)/((((q_Nsim/i_days)/i_hours)/i_min)/i_sec);
q_DsyniS = (i_xLokaS)/((((q_Nsim/i_days)/i_hours)/i_min)/i_sec);
q_DsyniF = (i_xLokaF)/((((q_Nsim/i_days)/i_hours)/i_min)/i_sec);

q_DsyniG = round(q_DsyniG,5);
q_DsyniS = round(q_DsyniS,5);
q_DsyniF = round(q_DsyniF,5);

end