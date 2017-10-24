n = 512;    
figure(12);
[h,w] = freqz(b,a,n);
mag = abs(h); 
phase = angle(h)*180/pi;

subplot(211), plot(w/(2*pi)*fs,mag), grid on;
title('��� ��������� ������������ Ͳ�-�������');
xlabel('�������'), ylabel('��������');
subplot(212), plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('��� ��������� ������������ Ͳ�-�������');
xlabel('�������'), ylabel('����');
% ���������� ���� �� ������ �������
disp('��� ��������� ������������ Ͳ�-�������');
x = roots(b);
disp(x);
% ����� ���� �� ������ �������
figure(13);
k = zplane(x);
