clear all;
close all;
%导入文档,将wav文件的路径保存到AllSound数组中
AllSound = importdata('SoundPath.txt');%读取SoundPath.txt文件到细胞数组A中
[m,n]=size(AllSound); %计算A的大小，此时m=数据个数,n=1

%测试  m=4620
m=10; %m为处理多少条语音数据

for number=1:m
    string=char(AllSound(number)); 
    [x1_low_P,x1_low_V,x1_daitong2_P,x1_daitong2_V,x1_daitong3_P,x1_daitong3_V,x1_daitong4_P,x1_daitong4_V,x1_daitong5_P,x1_daitong5_V,x1_high_P,x1_high_V]=findPV(string);
    NB = bandsPtxt(x1_low_P,x1_daitong2_P,x1_daitong3_P,x1_daitong4_P,x1_daitong5_P,x1_high_P,number);
end


%每个语音的六个P存起来，写到文档里  %%%%%%%%%%第一步：P里面存的是峰值的位置信息
%写函数 转化帧和时间，并进行比较，看准确率如何






