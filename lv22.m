fs=200;
ecg=load('ecg105.txt');
ecgd = detrend(ecg);
ecgf1 = filter(b1,a1,ecgd);
t=(0:length(ecgf1)-1)/fs;
figure(11);
subplot(311), plot(t,ecg), grid on;
title('ЕКГ сигнал');
xlabel('Час'), ylabel('Амплітуда');
subplot(312), plot(t,ecgf), grid on;
title('Відфільтрований сигнал при r = 0.7');
xlabel('Час'), ylabel('Амплітуда');

ecgf2 = filter(b2,a2,ecgd);
t=(0:length(ecgf2)-1)/fs;
subplot(313), plot(t,ecgf), grid on;
title('Відфільтрований сигнал при r = 0.9');
xlabel('Час'), ylabel('Амплітуда');
