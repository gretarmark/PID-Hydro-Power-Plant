function [q_H_init_G,q_H_edge_G,q_C1,q_Dmax_G,q_Dmin_G,q_kp,q_ki,q_Ti] = get_GeiralokaData(i_H_Lagoon)

    q_H_edge_G = 107;                     % [m]y.s. - Þröskuldshæð geiraloku
    q_H_init_G = i_H_Lagoon - q_H_edge_G; % [m] Upphafshæð lóns frá þröskuldi
    
    L       = 12;         % [m] Breidd geiraloku
    g_sqrt  = sqrt(9.82); % [m/s^2] Þyngdarkraftur jarðar
    q_C1    = L*g_sqrt;   % Grúbbað C1 sem fasta [m^2/s^2]

    q_Dmax_G    = 8.7;    % [m] Maximum opening D of a radial gate
    q_Dmin_G    = 0;      % [m] Minimum opening D of a radial gate

    % Geiraloka PI reglunar fastar
    q_kp = 60;      % Proportional Gain
    q_ki = 0.01;    % Integral Gain
    q_Ti = 1;       % Time constant for integral term
end