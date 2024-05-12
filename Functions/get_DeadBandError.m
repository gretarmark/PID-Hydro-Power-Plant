function [DBerror,error_u] = get_DeadBandError(u,Dmax,i,u_Slow,DB)
    % Fall til að fá error á opnun loku. 
    % Fallið uppfærir deadband og error.
    % Upphafstilla þarf DBerror breytu sem t.d. 2 fyrir for-lúppu
    
    if u > Dmax || u < 0
        DBerror = 0;
    else
        DBerror = DB;
    end

    if i>1
        error_u = u - u_Slow;
    else
        error_u = 0;
    end

end