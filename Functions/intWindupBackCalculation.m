function val = intWindupBackCalculation(u,u_sat,k_lim)

    diff = u - u_sat;
    val = diff * k_lim;

end