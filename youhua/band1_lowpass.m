%低通滤波：截止频率400，阻带衰减20dB，过渡带宽0.1π
function x1_low = band1_lowpass(x1,fs,derta_fs)
fc1=400;
N1=2*pi*0.9/(0.1*pi);
wc1=2*pi*fc1/fs;
if rem(N1,2)==0  %取窗长
   	N1=N1+1;
end
%Window= boxcar (N1+1); %长度为N1的矩形窗Window
Window= hanning(N1+1); %长度为N1的汉宁窗Window hanning
b1=fir1(N1,wc1/pi,'low',Window); %用fir1函数设置低通滤波器
% % figure(2);
% % freqz(b1,1,512);
% % title('band1低通滤波器的频率响应');
x1_low = filter(b1,1,x1);%对信号进行低通滤波处理
% % figure(3);
% % subplot(2,1,1);
% % plot(x1_low);
% % title('信号经过band1低通滤波器(时域)');
% % subplot(2,1,2);
% % plot([-fs/2:derta_fs:fs/2-derta_fs],abs(fftshift(fft(x1_low))));
% % title('信号经过band1低通滤波器（频域）');
