function u_Sei = OpeningSei(u,Dmax,Dmin)

    if u < Dmin
        u_Sei = Dmin;
    elseif u > Dmax
        u_Sei = Dmax;
    else
        u_Sei = u;
    end

end