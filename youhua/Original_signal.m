% [x1,fs,bits]=wavread('C:\Users\zhangyupei\Desktop\landmark_detection\timit\train\dr1\fcjf0\sa1.wav');
%原语音信号的时域、频域图
%[x1,fs,bits]=wavread('sa1_mono.wav');

function [x1,fs,derta_fs] = Original_signal(string)
%将语音文件读入matlab中
[x1,fs]=audioread(string);
% % %sound(x1,fs,bits);
% % figure(1);
% % subplot(2,1,1);
% % plot(x1);%做原始语音信号的时域图形
% % title('原始语音信号');
% % xlabel('时间 t');
% % ylabel('音量 n');
% % subplot(2,1,2);
y1=fft(x1);%做length(x1)点的FFT
y1=fftshift(y1); %平移，是频率中心为0
derta_fs = fs/length(x1); %设置频谱的间隔，分辨率
% % plot([-fs/2:derta_fs: fs/2-derta_fs],abs(y1));%画出原始语音信号的频谱图
% % title('原始语音信号的频谱');
% % grid on;

%fs=16000
