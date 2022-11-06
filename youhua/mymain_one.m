clear all;
close all;
%导入文档,将wav文件的路径保存到AllSound数组中
AllSound = importdata('SoundPath.txt');%读取SoundPath.txt文件到细胞数组A中
[m,n]=size(AllSound); %计算A的大小，此时m=数据个数,n=1

%测试
m=1; %m为处理多少条语音数据

for number=1:m
    string=char(AllSound(number)); 
    [x1_low_P,x1_low_V,x1_daitong2_P,x1_daitong2_V,x1_daitong3_P,x1_daitong3_V,x1_daitong4_P,x1_daitong4_V,x1_daitong5_P,x1_daitong5_V,x1_high_P,x1_high_V]=findPV(string);
end


%每个语音的六个P存起来，写到文档里  %%%%%%%%%%第一步：P里面存的是峰值的位置信息
%写函数 转化帧和时间，并进行比较，看准确率如何


%输出文档，存P的值

%x1_low_P 
[a,b]=size(x1_low_P); %a为长度，b为1
fid= fopen('band1能量导数峰值的位置与整段长的比值.txt','w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_low_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);

%x1_daitong2_P 
[a,b]=size(x1_daitong2_P); %a为长度，b为1
fid= fopen('band2能量导数峰值的位置与整段长的比值.txt','w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_daitong2_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);

%x1_daitong3_P 
[a,b]=size(x1_daitong3_P); %a为长度，b为1
fid= fopen('band3能量导数峰值的位置与整段长的比值.txt','w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_daitong3_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);


%x1_daitong4_P 
[a,b]=size(x1_daitong4_P); %a为长度，b为1
fid= fopen('band4能量导数峰值的位置与整段长的比值.txt','w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_daitong4_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);

%x1_daitong5_P 
[a,b]=size(x1_daitong5_P); %a为长度，b为1
fid= fopen('band5能量导数峰值的位置与整段长的比值.txt','w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_daitong5_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);

%x1_high_P 
[a,b]=size(x1_high_P); %a为长度，b为1
fid= fopen('band6能量导数峰值的位置与整段长的比值.txt','w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_high_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);



