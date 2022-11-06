%高通滤波：截止频率5000，阻带衰减40dB,过渡带宽0.1π
function x1_high = band6_highpass(x1,fs,derta_fs)
fc2=5000;
N2=2*pi*3.1/(0.1*pi);   %取窗长
wc2=2*pi*fc2/fs;
N2=N2+mod(N2,2);   %取模
Window=hanning(N2+1);
b2=fir1(N2,wc2/pi,'high',Window);
% % figure(12);
% % freqz(b2,1,512);%数字滤波器频率响应
% % title('band6高通滤波器的频率响应');
x1_high = filter(b2,1,x1);%对信号进行高通滤波处理
% % figure(13);
% % subplot(2,1,1);
% % plot(x1_high);
% % title('信号经过band6高通滤波器(时域)');
% % subplot(2,1,2);
% % plot([-fs/2:derta_fs:fs/2-derta_fs],abs(fftshift(fft(x1_high))));
% % title('信号经过band6高通滤波器（频域）');
