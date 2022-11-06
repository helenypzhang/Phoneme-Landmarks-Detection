%带通滤波：下截止频率800，上截止频率1500，阻带衰减20dB,过渡带宽度0.1π
function x1_daitong2 = band2_bandpass(x1,fs,derta_fs)
f1=800;f2=1500;   %带通滤波器的通带范围
w1=2*pi*f1/fs;
w3=w1+0.01*pi; %若调整0.1π -> 0.01π则可以运行
w2=2*pi*f2/fs;
w4=w2-0.01*pi;
w=[(w1+w3)/2,(w2+w4)/2];
B=0.1*pi;  %B为过渡带宽   %过度带宽的设置有什么影响，可以不设置吗？？？什么样的效果是好的？？%使边界变化更平滑，不设置的话物理上实现不了%结果上差不太多
N3=ceil(2*0.9*pi/B); %取窗长
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
%测试结果是w的值不满足要求 w =  0.4712    0.4320       a = 0.1500    0.1375
%   If Wn is a two-element vector, Wn = [W1 W2], FIR1 returns an
%   order N bandpass filter with passband  W1 < W < W2. You can
%   also specify B = FIR1(N,Wn,'bandpass').  If Wn = [W1 W2], 
%   B = FIR1(N,Wn,'stop') will design a bandstop filter.


b3=fir1(N3,w/pi,'bandpass',Window);%用fir1函数设置带通滤波器
% % figure(4);
% % freqz(b3,1,512);%数字滤波器频率响应
% % title('band2带通滤波器的频率响应');
x1_daitong2 = filter(b3,1,x1);%对信号进行带通滤波处理
% % figure(5);
% % subplot(2,1,1);
% % plot(x1_daitong2);
% % title('信号经过band2带通滤波器(时域)');
% % subplot(2,1,2);
% % plot([-fs/2:derta_fs:fs/2-derta_fs],abs(fftshift(fft(x1_daitong2))));
% % title('信号经过band2带通滤波器（频域）');
