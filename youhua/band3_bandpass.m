%��ͨ�˲����½�ֹƵ��1200���Ͻ�ֹƵ��2000�����˥��20dB,���ɴ����0.1��
function x1_daitong3 = band3_bandpass(x1,fs,derta_fs)
f1=1200;f2=2000;   %��ͨ�˲�����ͨ����Χ
w1=2*pi*f1/fs;
w3=w1+0.01*pi;
w2=2*pi*f2/fs;
w4=w2-0.01*pi;
w=[(w1+w3)/2,(w2+w4)/2];
%w=[w1,w2];   %����ı��ʽЧ���Ժ�һЩ
B=0.1*pi; % BΪ���ɴ���    
N3=ceil(2*0.9*pi/B);  % ȡ����
N3=N3+mod(N3,2);
Window=hanning(N3+1);

%��w�ı��ʽΪ+0.1������ֿհ׽�����ֵ���Ϊ�����0.01����������
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


b3=fir1(N3,w/pi,'bandpass',Window);%��fir1�������ô�ͨ�˲���
% % figure(6);
% % freqz(b3,1,512);%�����˲���Ƶ����Ӧ
% % title('band3��ͨ�˲�����Ƶ����Ӧ');
x1_daitong3 = filter(b3,1,x1);%���źŽ��д�ͨ�˲�����
% % figure(7);
% % subplot(2,1,1);
% % plot(x1_daitong3);
% % title('�źž���band3��ͨ�˲���(ʱ��)');
% % subplot(2,1,2);
% % plot([-fs/2:derta_fs:fs/2-derta_fs],abs(fftshift(fft(x1_daitong3))));
% % title('�źž���band3��ͨ�˲�����Ƶ��');
