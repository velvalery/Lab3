n = 512;  
figure(1);
[h,w] = freqz(b,a,n);
mag = abs(h); 
phase = angle(h)*180/pi;

subplot(2,1,1), plot(w/(2*pi)*fs,mag), grid on;
title('АЧХ смугового фільтру 2-го порядку');
xlabel('Частота'), ylabel('Амплітуда');
subplot(2,1,2), plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('ФЧХ смугового фільтру 2-го порядку');
xlabel('Частота'), ylabel('Фаза');
 % Обчислення нулів та полюсів фільтру
disp('Нулі фільтру') ;
x = roots(b);
disp(x);
 % Карта нулів та полюсів фільтру
figure(2);
k=zplane(x);
