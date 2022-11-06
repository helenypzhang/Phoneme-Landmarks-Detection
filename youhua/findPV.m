
% V;
% size(V)
% for i=1:mm
%     char(AllSound(i)); %��char()������ȡϸ�������д洢��·��
% end
function [x1_low_P,x1_low_V,x1_daitong2_P,x1_daitong2_V,x1_daitong3_P,x1_daitong3_V,x1_daitong4_P,x1_daitong4_V,x1_daitong5_P,x1_daitong5_V,x1_high_P,x1_high_V]=findPV(string)
%function [x1_low_P,x1_daitong2_P,x1_daitong3_P,x1_daitong4_P,x1_daitong5_P,x1_high_P]=findPV(string)
%����Original_signal()�������ó�[x1,fs]������ʹ��
%string=char(AllSound(int));  %��ô��AllSound(1)�е����ֻ����Զ�ѭ�����أ���д��forѭ�������ϣ��������ǳ���˵�±겻ƥ�䣿
[x1,fs,derta_fs]=Original_signal(string);
%sound(x1,fs);  %�����ã��ɹ�

%���������˲����������ó������˲����������ź�
x1_low = band1_lowpass(x1,fs,derta_fs);
x1_daitong2 = band2_bandpass(x1,fs,derta_fs);
x1_daitong3 = band3_bandpass(x1,fs,derta_fs);
x1_daitong4 = band4_bandpass(x1,fs,derta_fs);
x1_daitong5 = band5_bandpass(x1,fs,derta_fs);
x1_high = band6_highpass(x1,fs,derta_fs);

%����energyline()�������ó��������ߵı仯��EnergyDiff
[x1_low_EnergyDiff,x1_daitong2_EnergyDiff,x1_daitong3_EnergyDiff,x1_daitong4_EnergyDiff,x1_daitong5_EnergyDiff,x1_high_EnergyDiff]=energyline(x1_low,x1_daitong2,x1_daitong3,x1_daitong4,x1_daitong5,x1_high);

%����positione()�������ó��������ߵı仯��EnergyDiff ���������ķ�ֵV�����������λ��P
[x1_low_P,x1_low_V,x1_daitong2_P,x1_daitong2_V,x1_daitong3_P,x1_daitong3_V,x1_daitong4_P,x1_daitong4_V,x1_daitong5_P,x1_daitong5_V,x1_high_P,x1_high_V]=position(x1_low_EnergyDiff,x1_daitong2_EnergyDiff,x1_daitong3_EnergyDiff,x1_daitong4_EnergyDiff,x1_daitong5_EnergyDiff,x1_high_EnergyDiff);

%����ֵλ��P ������
%���ԣ�����������Ƶ�����������ĳ��ȶ�һ��
%size(x1_low)��size(x1_daitong2)��ͬ������  46797     1
%size(x1_low_EnergyDiff)��size(x1_daitong2_EnergyDiff)��ͬ������  1   232

%x1_low_P
[c,d]=size(x1_low_P);   %c=6,d=1
[e,f]=size(x1_low_EnergyDiff);   %e=1,f=232
for i=1:c
    x1_low_P(i)=x1_low_P(i)/f;
end

%x1_daitong2_P
[c,d]=size(x1_daitong2_P);   %c=6,d=1
[e,f]=size(x1_daitong2_EnergyDiff);   %e=1,f=232
for i=1:c
    x1_daitong2_P(i)=x1_daitong2_P(i)/f;
end

%x1_daitong3_P
[c,d]=size(x1_daitong3_P);   %c=6,d=1
[e,f]=size(x1_daitong3_EnergyDiff);   %e=1,f=232
for i=1:c
    x1_daitong3_P(i)=x1_daitong3_P(i)/f;
end

%x1_daitong4_P
[c,d]=size(x1_daitong4_P);   %c=6,d=1
[e,f]=size(x1_daitong4_EnergyDiff);   %e=1,f=232
for i=1:c
    x1_daitong4_P(i)=x1_daitong4_P(i)/f;
end

%x1_daitong5_P
[c,d]=size(x1_daitong5_P);   %c=6,d=1
[e,f]=size(x1_daitong5_EnergyDiff);   %e=1,f=232
for i=1:c
    x1_daitong5_P(i)=x1_daitong5_P(i)/f;
end

%x1_high_P
[c,d]=size(x1_high_P);   %c=6,d=1
[e,f]=size(x1_high_EnergyDiff);   %e=1,f=232
for i=1:c
    x1_high_P(i)=x1_high_P(i)/f;
end






