% ������������ ������� ��� (���� ecg105.txt) ������������� 
fs = 200;
ecg = load('ecg105.txt');   % ������ ���
ecgd = detrend(ecg);
figure(24);
% ���������� �� ������� ������������
ecgf = filter(b,a,ecgd);
subplot(3,1,1), plot(ecgf), grid on;
title('���������� �� ������� ������������');
% ���������� �� ������� ��������
ecgf1 = filter(b1,a1,ecgd);
subplot(3,1,2), plot(ecgf1), grid on;
title('���������� �� ������� ��������');
% ���������� �� ������� ������� (ѳ������)
ecgf2 = filter(b2,a2,ecgd);
subplot(3,1,3), plot(ecgf2), grid on;
title('���������� �� ������� ������� (ѳ������)');
