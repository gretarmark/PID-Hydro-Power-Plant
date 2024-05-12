function A = ShiftArray(A,n)
    % Fall notað til að hliðra fylki um n gildi frá hægri til vinstri
    % n = -1 hliðrar fylki um 1 til vinstri, n = -2 hliðrar um 2 til vinstri

    if nargin == 1
        n = -1; % Shift array to the left by one element   
    end

    A = circshift(A,n);
    
    if n>0
        A(1:n) = 0;
    else
        A(end+n+1:end) = 0;
    end
end