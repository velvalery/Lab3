figure(21);
subplot(211);
mag0 =1./(2*pi*f);
loglog(f,mag0,f,mag); grid on;
title('Графік похибки інтегратора методом прямокутників');
err = (mag-mag0)*100;
subplot(212), plot(f,err), grid on;
 
figure(22);
subplot(211);
mag0 =1./(2*pi*f1);
loglog(f1,mag0,f1,mag1); grid on;
title('Графік похибки інтегратора методом трапецій');
err1 = (mag1-mag0)*100;
subplot(212), plot(f1,err1), grid on;
 
figure(23);
subplot(211);
mag0 =1./(2*pi*f2);
loglog(f2,mag0,f2,mag2); grid on;
title('Графік похибки інтегратора методом парабол (Сімпсона)');
err2 = (mag2-mag0)*100;
subplot(212), plot(f2,err2), grid on;

