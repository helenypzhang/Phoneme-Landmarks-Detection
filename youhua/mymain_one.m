clear all;
close all;
%�����ĵ�,��wav�ļ���·�����浽AllSound������
AllSound = importdata('SoundPath.txt');%��ȡSoundPath.txt�ļ���ϸ������A��
[m,n]=size(AllSound); %����A�Ĵ�С����ʱm=���ݸ���,n=1

%����
m=1; %mΪ�����������������

for number=1:m
    string=char(AllSound(number)); 
    [x1_low_P,x1_low_V,x1_daitong2_P,x1_daitong2_V,x1_daitong3_P,x1_daitong3_V,x1_daitong4_P,x1_daitong4_V,x1_daitong5_P,x1_daitong5_V,x1_high_P,x1_high_V]=findPV(string);
end


%ÿ������������P��������д���ĵ���  %%%%%%%%%%��һ����P�������Ƿ�ֵ��λ����Ϣ
%д���� ת��֡��ʱ�䣬�����бȽϣ���׼ȷ�����


%����ĵ�����P��ֵ

%x1_low_P 
[a,b]=size(x1_low_P); %aΪ���ȣ�bΪ1
fid= fopen('band1����������ֵ��λ�������γ��ı�ֵ.txt','w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_low_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);

%x1_daitong2_P 
[a,b]=size(x1_daitong2_P); %aΪ���ȣ�bΪ1
fid= fopen('band2����������ֵ��λ�������γ��ı�ֵ.txt','w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_daitong2_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);

%x1_daitong3_P 
[a,b]=size(x1_daitong3_P); %aΪ���ȣ�bΪ1
fid= fopen('band3����������ֵ��λ�������γ��ı�ֵ.txt','w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_daitong3_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);


%x1_daitong4_P 
[a,b]=size(x1_daitong4_P); %aΪ���ȣ�bΪ1
fid= fopen('band4����������ֵ��λ�������γ��ı�ֵ.txt','w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_daitong4_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);

%x1_daitong5_P 
[a,b]=size(x1_daitong5_P); %aΪ���ȣ�bΪ1
fid= fopen('band5����������ֵ��λ�������γ��ı�ֵ.txt','w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_daitong5_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);

%x1_high_P 
[a,b]=size(x1_high_P); %aΪ���ȣ�bΪ1
fid= fopen('band6����������ֵ��λ�������γ��ı�ֵ.txt','w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_high_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);



