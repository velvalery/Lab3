fs = 200;
ecg = load('ecg2x60.dat');
ecgf = filter(b,a,ecg);
t =(0:length(ecgf)-1)/fs;
figure(15);
subplot(211), plot(t,ecg), grid on;
title('��� ������');
xlabel('���'), ylabel('��������');
subplot(212), plot(t,ecgf), grid on;
title('³������������� ������');
xlabel('���'), ylabel('��������');