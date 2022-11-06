%带通滤波：下截止频率1200，上截止频率2000，阻带衰减20dB,过渡带宽度0.1π
function x1_daitong3 = band3_bandpass(x1,fs,derta_fs)
f1=1200;f2=2000;   %带通滤波器的通带范围
w1=2*pi*f1/fs;
w3=w1+0.01*pi;
w2=2*pi*f2/fs;
w4=w2-0.01*pi;
w=[(w1+w3)/2,(w2+w4)/2];
%w=[w1,w2];   %上面的表达式效果稍好一些
B=0.1*pi; % B为过渡带宽    
N3=ceil(2*0.9*pi/B);  % 取窗长
N3=N3+mod(N3,2);
Window=hanning(N3+1);

%若w的表达式为+0.1，则出现空白结果；现调整为上面的0.01，可以运行
% a=w/pi;
% w  
% a
% w =
% 
%     0.6283    0.6283
% 
% a =
% 
%     0.2000    0.2000


b3=fir1(N3,w/pi,'bandpass',Window);%用fir1函数设置带通滤波器
% % figure(6);
% % freqz(b3,1,512);%数字滤波器频率响应
% % title('band3带通滤波器的频率响应');
x1_daitong3 = filter(b3,1,x1);%对信号进行带通滤波处理
% % figure(7);
% % subplot(2,1,1);
% % plot(x1_daitong3);
% % title('信号经过band3带通滤波器(时域)');
% % subplot(2,1,2);
% % plot([-fs/2:derta_fs:fs/2-derta_fs],abs(fftshift(fft(x1_daitong3))));
% % title('信号经过band3带通滤波器（频域）');
