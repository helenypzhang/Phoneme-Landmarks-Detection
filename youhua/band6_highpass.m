%��ͨ�˲�����ֹƵ��5000�����˥��40dB,���ɴ���0.1��
function x1_high = band6_highpass(x1,fs,derta_fs)
fc2=5000;
N2=2*pi*3.1/(0.1*pi);   %ȡ����
wc2=2*pi*fc2/fs;
N2=N2+mod(N2,2);   %ȡģ
Window=hanning(N2+1);
b2=fir1(N2,wc2/pi,'high',Window);
% % figure(12);
% % freqz(b2,1,512);%�����˲���Ƶ����Ӧ
% % title('band6��ͨ�˲�����Ƶ����Ӧ');
x1_high = filter(b2,1,x1);%���źŽ��и�ͨ�˲�����
% % figure(13);
% % subplot(2,1,1);
% % plot(x1_high);
% % title('�źž���band6��ͨ�˲���(ʱ��)');
% % subplot(2,1,2);
% % plot([-fs/2:derta_fs:fs/2-derta_fs],abs(fftshift(fft(x1_high))));
% % title('�źž���band6��ͨ�˲�����Ƶ��');
