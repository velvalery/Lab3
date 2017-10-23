n = 512;  
figure(1);
[h,w] = freqz(b,a,n);
mag = abs(h); 
phase = angle(h)*180/pi;

subplot(2,1,1), plot(w/(2*pi)*fs,mag), grid on;
title('��� ��������� ������� 2-�� �������');
xlabel('�������'), ylabel('��������');
subplot(2,1,2), plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('��� ��������� ������� 2-�� �������');
xlabel('�������'), ylabel('����');
 % ���������� ���� �� ������ �������
disp('��� �������') ;
x = roots(b);
disp(x);
 % ����� ���� �� ������ �������
figure(2);
k=zplane(x);
