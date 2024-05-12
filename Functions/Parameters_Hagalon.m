
% Parameters for Hvammsvirkjun/Hagalón

% Reference: 11034001-1-MB-0517-Vatnsborðsstýring.pdf
  
H_fl_deviation = 0.30; % [m] y.s. - Allowed deviation "+/- 0.30m"
Hmin_m_fl = 115.70;    % [m] y.s. - Allowed min value water-height-control with machines and radial gates in "flóðgáttum"
Hmax_m_fl = 116.30;    % [m] y.s. - Allowed max value water-height-control with machines and radial gates in "flóðgáttum"
    
H_flipal_deviation = 0.10;  % [m] y.s. - Allowed deviation "+/- 0.10m"
Hmin_flipal = 116.30;       % [m] y.s. - Allowed min value water-height-control with "flipalokum"
Hmax_flipal = 116.50;       % [m] y.s. - Allowed max value
  
% ATH: Stýring geiralokur í seiðarennu á að vera einungis handvirk

Qm_max = 352;      % [m^3/s] - Max flow through machines
Qout_sf_min = 10;  % [m^3/s] - Min flow out of Hagalón, through seiðafleyta. To prevent dryness in the river

H_m_desired_deviation = 0.02; % [m] y.s. - Allowed deviation "+/- 0.02m"
H_m_desired = 116.00;         % [m] y.s. - Desired height in Hagalón for machines

H_geir_desired_deviation = 0.02; % [m] y.s. - Allowed deviation "+/- 0.02m"
H_geir_desired = 116.10; % [m] y.s. - Desired height in Hagalón for "geiralokur"

Area_waterlevel_operation = 3.8; % [km^2] - Area of water level when in operation mode, at 116.00 m y.s.
Area_waterlevel_117 = 4.3; % [km^2] - Area of water level at 117 m y.s.

H_max_flood = 117.5; % [m] y.s. - Highest floot water level (hönunarflóð)
H_min_operation = 114.0; % [m] y.s. - Lowest operation water level

H_thresh_geir = 107.00; % [m] y.s. - Threshold (þröskuldur) under radial gates "flóðgáttar"
W_geir = 12;            % [m] - Width of radial gates (3 stk.)
H_geir = 9;             % [m] - Height of radial gates 
H_thresh_fl = 112.00;   % [m] y.s. - Threshold (þröskuldur) under "flipalokum"
W_fl = 20;              % [m] - Width of "flipaloku" (4.stk)
H_fl = 9;               % [m] - Height of "flipaloku"

% Input opening in "seiðarennu"
H_thresh_seidar_lower = 114.8; % [m] y.s. - Threshold level above sea level (lower edge) for "seiðarenna"
H_thresh_seidar_upper = 116.8; % [m] y.s. - Threshold level above sea level (upper edge) for "seiðarenna"
W_seidar = 10;                 % [m] - Width (lengd - verið að meina width?) of "seiðarenna"

% Radial Gate in "seiðarenna"
Q_const_geir_seidar_summer = 10; % [m^3/s] - Constant flow through "seiðarenna" from 15. May to 30. June 
H_min_Hagalon = 115.3;           % [m] y.s. - Minimum water level in Hagalón to reach 10 m^3/s
D_geir_seidar_Hmin = 0.3;        % [m] - Opening of radial gate in "seiðarennu" at minimum water level in Hagalón

% Flow through "seiðarenna" over summertime from 15. May to 30. June -
% Fully open radial gate in "seiðarenna"
Q_Hmin_seidar = 25;       % [m^3/s] - Allowed flow through "seiðarenna" for lower limits of water level (115 m y.s.)
Q_Hdesired_seidar_m = 38; % [m^3/s] - Flow at desired water level control of machines on water level in the lagoon (116 m y.s.)
Q_Hupper_seidar = 53;     % [m^3/s] - Flow at allowed upper water level limits (116 m y.s.)

H_deviation = 0.02; % [m] - Deviation of water level from sensors

% Remember: * Flow out goes first through machines up to 352 m^3/s
%             and kkep minimum flow through "seiðarenna", 10 m^3/s
%           * If machines are full, the flow goes next through radial gates
%             in "flóðgáttum"
%           * Finally, if the flow is more, it goes through "flipalokur"




