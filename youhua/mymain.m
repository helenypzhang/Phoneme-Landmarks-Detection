clear all;
close all;
%�����ĵ�,��wav�ļ���·�����浽AllSound������
AllSound = importdata('SoundPath.txt');%��ȡSoundPath.txt�ļ���ϸ������A��
[m,n]=size(AllSound); %����A�Ĵ�С����ʱm=���ݸ���,n=1

%����  m=4620
m=10; %mΪ�����������������

for number=1:m
    string=char(AllSound(number)); 
    [x1_low_P,x1_low_V,x1_daitong2_P,x1_daitong2_V,x1_daitong3_P,x1_daitong3_V,x1_daitong4_P,x1_daitong4_V,x1_daitong5_P,x1_daitong5_V,x1_high_P,x1_high_V]=findPV(string);
    NB = bandsPtxt(x1_low_P,x1_daitong2_P,x1_daitong3_P,x1_daitong4_P,x1_daitong5_P,x1_high_P,number);
end


%ÿ������������P��������д���ĵ���  %%%%%%%%%%��һ����P�������Ƿ�ֵ��λ����Ϣ
%д���� ת��֡��ʱ�䣬�����бȽϣ���׼ȷ�����






