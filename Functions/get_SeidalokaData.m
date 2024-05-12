function [q_H_init_S,q_H_edge_S,q_C1_Sei,q_Dmax_S,q_Dmin_S,q_C2_Sei,q_kp_Sei,q_ki_Sei,q_Ti_Sei] = get_SeidalokaData(i_H_Lagoon)

    q_H_edge_S = 111;                     % [m]y.s. - Þröskuldshæð geiraloku
    q_H_init_S = i_H_Lagoon - q_H_edge_S; % [m] Upphafshæð lóns frá þröskuldi

    % Parameters for seidaloka
    L_Sei = 4.5;               % [m] Breidd seiðaloku
    g_sqrt  = sqrt(9.82); % [m/s^2] Þyngdarkraftur jarðar
    q_C1_Sei = L_Sei*g_sqrt;     % [m^2/s^2]

    q_Dmax_S = 3.8;       % [m] Maximum opening Ds of 1 seidaloka
    q_Dmin_S = 0.35;

    % Þröskuldur við seiðaloku
    Leff  = 19;     % [m] Breydd á opi
    Cd    = 1.518;  % [m] Einhverskonar stuðull lokunnar 
    q_C2_Sei = Leff*Cd;

    % Seidaloka PI fastar
    q_kp_Sei = 60;   % Proportional Gain
    q_ki_Sei = 0.01; % Integral Gain
    q_Ti_Sei = 1;    % Time constant for integral term
end