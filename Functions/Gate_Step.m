function Dout = Gate_Step(Din)

five_percent1 = 0.435; % 0.05 * 8.7m (5% opening)
five_percent2 = 0.87; % 0.1 * 8.7m (10% opening)
five_percent3 = 1.3050; % 0.1 * 8.7m (15% opening)
five_percent4 = 1.74; % 0.1 * 8.7m (20% opening)
five_percent5 = 2.175; % 0.1 * 8.7m (25% opening)
five_percent6 = 2.61; % 0.1 * 8.7m (30% opening)
five_percent7 = 3.045; % 0.1 * 8.7m (35% opening)
five_percent8 = 3.48; % 0.1 * 8.7m (40% opening)
five_percent9 = 3.915; % 0.1 * 8.7m (45% opening)
five_percent10 = 4.35; % 0.1 * 8.7m (50% opening)
five_percent11 = 4.785; % 0.1 * 8.7m (55% opening)
five_percent12 = 5.22; % 0.1 * 8.7m (60% opening)
five_percent13 = 5.655; % 0.1 * 8.7m (65% opening)
five_percent14 = 6.09; % 0.1 * 8.7m (70% opening)
five_percent15 = 6.525; % 0.1 * 8.7m (75% opening)
five_percent16 = 6.96; % 0.1 * 8.7m (10% opening)
five_percent17 = 7.395; % 0.1 * 8.7m (10% opening)
five_percent18 = 7.83; % 0.1 * 8.7m (10% opening)
five_percent19 = 8.265; % 0.1 * 8.7m (10% opening)
five_percent20 = 8.7; % 0.1 * 8.7m (10% opening)


if Din >= 0 && Din < five_percent1
    Dout = 0;
elseif Din >= five_percent1 && Din < five_percent2
    Dout = five_percent1;
elseif Din >= five_percent2 && Din < five_percent3
    Dout = five_percent2;
elseif Din >= five_percent3 && Din < five_percent4
    Dout = five_percent3;
elseif Din >= five_percent4 && Din < five_percent5
    Dout = five_percent4;
elseif Din >= five_percent5 && Din < five_percent6
    Dout = five_percent5;
elseif Din >= five_percent6 && Din < five_percent7
    Dout = five_percent6;
elseif Din >= five_percent7 && Din < five_percent8
    Dout = five_percent7;
elseif Din >= five_percent8 && Din < five_percent9
    Dout = five_percent8;
elseif Din >= five_percent9 && Din < five_percent10
    Dout = five_percent9;
elseif Din >= five_percent10 && Din < five_percent11
    Dout = five_percent10;
elseif Din >= five_percent11 && Din < five_percent12
    Dout = five_percent11;
elseif Din >= five_percent12 && Din < five_percent13
    Dout = five_percent12;
elseif Din >= five_percent13 && Din < five_percent14
    Dout = five_percent13;
elseif Din >= five_percent14 && Din < five_percent15
    Dout = five_percent14;
elseif Din >= five_percent15 && Din < five_percent16
    Dout = five_percent15;
elseif Din >= five_percent16 && Din < five_percent17
    Dout = five_percent16;
elseif Din >= five_percent17 && Din < five_percent18
    Dout = five_percent17;
elseif Din >= five_percent18 && Din < five_percent19
    Dout = five_percent18;
elseif Din >= five_percent19 && Din < five_percent20
    Dout = five_percent19;
else 
    Dout = five_percent20;
end

end