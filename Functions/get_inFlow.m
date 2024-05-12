function [Qin] = get_inFlow(i_Nsim,i_QinName)

% Innflæði
Qin = cell2mat(struct2cell(load(i_QinName)));
Q_val = 5245000:6750000;
Qin(1,Q_val) = Qin(1,Q_val) + 2000;

Qin(1,1:864000) = Qin(1,1:864000) - 250;
Qin(1,664000:864000) = 0;

% Háflóð 1
x1_flod = 4680000;
x2_flod = 5245000;
Q_flod = x1_flod:x2_flod;
Qin(1,Q_flod) = 0;
y1_flod = Qin(1,x1_flod-1);
y2_flod = Qin(1,x2_flod+1);
m_hallat = (y2_flod - y1_flod) / (x2_flod - x1_flod);
y_flod(1,1:i_Nsim) = 0;
for q = x1_flod:x2_flod
    y_flod(1,q) = m_hallat*(q-x1_flod) + y1_flod;
end
Qin(1,Q_flod) = y_flod(1,Q_flod);

% Háflóð 2
x1_flod2 = 5747000;
x2_flod2 = x1_flod2 + (x2_flod - x1_flod);
Q_flod2 = x1_flod2:x2_flod2;
Qin(1,Q_flod2) = Qin(1,x1_flod2);
y1_flod2 = Qin(1,x1_flod2-1);
y2_flod2 = 3450;
m_hallat2 = (y2_flod2 - y1_flod2) / (x2_flod2 - x1_flod2);
y_flod2(1,1:i_Nsim) = 0;
for q2 = x1_flod2:x2_flod2
    y_flod2(1,q2) = m_hallat2*(q2-x1_flod2) + y1_flod2;
end
Qin(1,Q_flod2) = y_flod2(1,Q_flod2);

% Stöðugt innstreymi
x1_steady = x2_flod2+1;
x2_steady = 6690000;
Qin(1,x1_steady:x2_steady) = y2_flod2;

end