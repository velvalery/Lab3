n = 512;    
figure(12);
[h,w] = freqz(b,a,n);
mag = abs(h); 
phase = angle(h)*180/pi;

subplot(211), plot(w/(2*pi)*fs,mag), grid on;
title('АЧХ смугового режекторного НІХ-фільтру');
xlabel('Частота'), ylabel('Амплітуда');
subplot(212), plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('ФЧХ смугового режекторного НІХ-фільтру');
xlabel('Частота'), ylabel('Фаза');
% Обчислення нулів та полюсів фільтру
disp('Нулі смугового режекторного НІХ-фільтру');
x = roots(b);
disp(x);
% Карта нулів та полюсів фільтру
figure(13);
k = zplane(x);
