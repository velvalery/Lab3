fs = 200;
r = 0.8;
phi1 = 110*pi/180;
phi2 = 130*pi/180;
a1 = [1 -2*r*cos(phi1) r^2]; 
a2 = [1 -2*r*cos(phi2) r^2];
a = conv(a1,a2);
b = [1 1 1]/3;
disp('������������ �������');
H = filt(b,a)
