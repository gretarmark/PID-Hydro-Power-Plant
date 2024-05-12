function [q_H_init_F,q_H_edge_F,q_Bflip] = get_FlipalokaData(i_H_Lagoon)

    q_H_edge_F = 112;                     % [m]y.s. - Þröskuldshæð geiraloku
    q_H_init_F = i_H_Lagoon - q_H_edge_F; % [m] Upphafshæð lóns frá þröskuldi
    
    q_Bflip = 20; % [m] Breidd flipaloku
end