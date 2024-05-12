function xlpf = LowPassFilter(x,alpha)
% Velja skal alpha á bilinu 0 til 1.
% Persistent var: https://se.mathworks.com/videos/persistent-variables-in-matlab-97167.html
% Það má ekki kalla á þetta fall oftar en einusinni 
% þar sem verið er að nota persistent breytur

persistent prevX
persistent firstRun

if isempty(firstRun)
    prevX = x;
    firstRun = 1;
end

xlpf = alpha*prevX + (1-alpha)*x;

prevX = xlpf;

end