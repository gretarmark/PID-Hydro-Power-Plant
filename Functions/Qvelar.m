function Q = Qvelar(H,m)
    
    % Setja hallatölvu efst í forrit: m = (y2-y1) / (x2-x1) = (352 - 0) / (116.1 - 114.8) 
    % y(H) = m(H-x1) + y2

    H = 107+H;

    Q = m*(H-114.8);

    if Q < 0
        Q = 0;
    elseif Q > 352
        Q = 352;
    end

end