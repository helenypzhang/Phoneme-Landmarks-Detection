% [x1,fs,bits]=wavread('C:\Users\zhangyupei\Desktop\landmark_detection\timit\train\dr1\fcjf0\sa1.wav');
%ԭ�����źŵ�ʱ��Ƶ��ͼ
%[x1,fs,bits]=wavread('sa1_mono.wav');

function [x1,fs,derta_fs] = Original_signal(string)
%�������ļ�����matlab��
[x1,fs]=audioread(string);
% % %sound(x1,fs,bits);
% % figure(1);
% % subplot(2,1,1);
% % plot(x1);%��ԭʼ�����źŵ�ʱ��ͼ��
% % title('ԭʼ�����ź�');
% % xlabel('ʱ�� t');
% % ylabel('���� n');
% % subplot(2,1,2);
y1=fft(x1);%��length(x1)���FFT
y1=fftshift(y1); %ƽ�ƣ���Ƶ������Ϊ0
derta_fs = fs/length(x1); %����Ƶ�׵ļ�����ֱ���
% % plot([-fs/2:derta_fs: fs/2-derta_fs],abs(y1));%����ԭʼ�����źŵ�Ƶ��ͼ
% % title('ԭʼ�����źŵ�Ƶ��');
% % grid on;

%fs=16000
