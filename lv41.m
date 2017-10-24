% ������������ ������� ������������
fs = 300;   
T = 1/fs;
% ������������ ������� ������������ 
b =T*1; 
a = [1 -1]; 
% ������������ ������� ��������.
b1 = [1 1]*T/2;
a1 = [1 -1];
% ������������ ������� ������� (ѳ������)
b2 = [1 4 1]*T/3;
a2 = [1 0 -1];
n = 512;    
[h,f] = freqz(b,a,n);
mag = abs(h);
phase = angle(h)*180/pi;
[h1,f1] = freqz(b1,a1,n);
mag1 = abs(h1);
phase1 = angle(h1)*180/pi;
[h2,f2] = freqz(b2,a2,n);
mag2 = abs(h2);
phase2 = angle(h2)*180/pi;

figure(16);
subplot(131), plot(f/(2*pi)*fs,mag), grid on;
title('��� �������� ����������� ������� ������������');
xlabel('�������'), ylabel('��������');
 
subplot(132), plot(f1/(2*pi)*fs,mag1), grid on;
title('��� �������� ����������� ������� ��������'); 
xlabel('�������'), ylabel('��������');
 
subplot(133), plot(f2/(2*pi)*fs,mag2), grid on;
title('��� �������� ����������� ������� ѳ������'); 
xlabel('�������'), ylabel('��������');
 
figure(17);
subplot(131), plot(f/(2*pi)*fs,unwrap(phase)), grid on;
title('��� �������� ����������� ������� ������������');
xlabel('�������'), ylabel('����');
 
subplot(132), plot(f1/(2*pi)*fs,unwrap(phase1)), grid on;
title('��� �������� ����������� ������� ��������'); 
xlabel('�������'), ylabel('����');
 
subplot(133), plot(f2/(2*pi)*fs,unwrap(phase2)), grid on;
title('��� �������� ����������� ������� ѳ������'); 
xlabel('�������'), ylabel('����');
