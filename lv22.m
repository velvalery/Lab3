fs=200;
ecg=load('ecg105.txt');
ecgd = detrend(ecg);
ecgf1 = filter(b1,a1,ecgd);
t=(0:length(ecgf1)-1)/fs;
figure(11);
subplot(311), plot(t,ecg), grid on;
title('��� ������');
xlabel('���'), ylabel('��������');
subplot(312), plot(t,ecgf), grid on;
title('³������������� ������ ��� r = 0.7');
xlabel('���'), ylabel('��������');

ecgf2 = filter(b2,a2,ecgd);
t=(0:length(ecgf2)-1)/fs;
subplot(313), plot(t,ecgf), grid on;
title('³������������� ������ ��� r = 0.9');
xlabel('���'), ylabel('��������');
