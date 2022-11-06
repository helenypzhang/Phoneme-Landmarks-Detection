%��ͨ�˲����½�ֹƵ��800���Ͻ�ֹƵ��1500�����˥��20dB,���ɴ����0.1��
function x1_daitong2 = band2_bandpass(x1,fs,derta_fs)
f1=800;f2=1500;   %��ͨ�˲�����ͨ����Χ
w1=2*pi*f1/fs;
w3=w1+0.01*pi; %������0.1�� -> 0.01�����������
w2=2*pi*f2/fs;
w4=w2-0.01*pi;
w=[(w1+w3)/2,(w2+w4)/2];
B=0.1*pi;  %BΪ���ɴ���   %���ȴ����������ʲôӰ�죬���Բ������𣿣���ʲô����Ч���Ǻõģ���%ʹ�߽�仯��ƽ���������õĻ�������ʵ�ֲ���%����ϲ̫��
N3=ceil(2*0.9*pi/B); %ȡ����
N3=N3+mod(N3,2);
Window=hanning(N3+1);


%   B = FIR1(N,Wn) designs an N'th order lowpass FIR digital filter
%   and returns the filter coefficients in length N+1 vector B.
%   The cut-off frequency Wn must be between 0 < Wn < 1.0, with 1.0 
%   corresponding to half the sample rate.  The filter B is real and
%   has linear phase.  The normalized gain of the filter at Wn is
%   -6 dB.

% a=w/pi;
% w  
% a
%���Խ����w��ֵ������Ҫ�� w =  0.4712    0.4320       a = 0.1500    0.1375
%   If Wn is a two-element vector, Wn = [W1 W2], FIR1 returns an
%   order N bandpass filter with passband  W1 < W < W2. You can
%   also specify B = FIR1(N,Wn,'bandpass').  If Wn = [W1 W2], 
%   B = FIR1(N,Wn,'stop') will design a bandstop filter.


b3=fir1(N3,w/pi,'bandpass',Window);%��fir1�������ô�ͨ�˲���
% % figure(4);
% % freqz(b3,1,512);%�����˲���Ƶ����Ӧ
% % title('band2��ͨ�˲�����Ƶ����Ӧ');
x1_daitong2 = filter(b3,1,x1);%���źŽ��д�ͨ�˲�����
% % figure(5);
% % subplot(2,1,1);
% % plot(x1_daitong2);
% % title('�źž���band2��ͨ�˲���(ʱ��)');
% % subplot(2,1,2);
% % plot([-fs/2:derta_fs:fs/2-derta_fs],abs(fftshift(fft(x1_daitong2))));
% % title('�źž���band2��ͨ�˲�����Ƶ��');
