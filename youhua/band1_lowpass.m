%��ͨ�˲�����ֹƵ��400�����˥��20dB�����ɴ���0.1��
function x1_low = band1_lowpass(x1,fs,derta_fs)
fc1=400;
N1=2*pi*0.9/(0.1*pi);
wc1=2*pi*fc1/fs;
if rem(N1,2)==0  %ȡ����
   	N1=N1+1;
end
%Window= boxcar (N1+1); %����ΪN1�ľ��δ�Window
Window= hanning(N1+1); %����ΪN1�ĺ�����Window hanning
b1=fir1(N1,wc1/pi,'low',Window); %��fir1�������õ�ͨ�˲���
% % figure(2);
% % freqz(b1,1,512);
% % title('band1��ͨ�˲�����Ƶ����Ӧ');
x1_low = filter(b1,1,x1);%���źŽ��е�ͨ�˲�����
% % figure(3);
% % subplot(2,1,1);
% % plot(x1_low);
% % title('�źž���band1��ͨ�˲���(ʱ��)');
% % subplot(2,1,2);
% % plot([-fs/2:derta_fs:fs/2-derta_fs],abs(fftshift(fft(x1_low))));
% % title('�źž���band1��ͨ�˲�����Ƶ��');
