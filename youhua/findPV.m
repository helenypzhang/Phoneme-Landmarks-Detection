
% V;
% size(V)
% for i=1:mm
%     char(AllSound(i)); %用char()函数读取细胞数组中存储的路径
% end
function [x1_low_P,x1_low_V,x1_daitong2_P,x1_daitong2_V,x1_daitong3_P,x1_daitong3_V,x1_daitong4_P,x1_daitong4_V,x1_daitong5_P,x1_daitong5_V,x1_high_P,x1_high_V]=findPV(string)
%function [x1_low_P,x1_daitong2_P,x1_daitong3_P,x1_daitong4_P,x1_daitong5_P,x1_high_P]=findPV(string)
%调用Original_signal()函数，得出[x1,fs]供后面使用
%string=char(AllSound(int));  %怎么把AllSound(1)中的数字换成自动循环的呢？我写了for循环（如上），但总是出错，说下标不匹配？
[x1,fs,derta_fs]=Original_signal(string);
%sound(x1,fs);  %测试用，成功

%调用六个滤波器函数，得出经过滤波器处理后的信号
x1_low = band1_lowpass(x1,fs,derta_fs);
x1_daitong2 = band2_bandpass(x1,fs,derta_fs);
x1_daitong3 = band3_bandpass(x1,fs,derta_fs);
x1_daitong4 = band4_bandpass(x1,fs,derta_fs);
x1_daitong5 = band5_bandpass(x1,fs,derta_fs);
x1_high = band6_highpass(x1,fs,derta_fs);

%调用energyline()函数，得出能量曲线的变化率EnergyDiff
[x1_low_EnergyDiff,x1_daitong2_EnergyDiff,x1_daitong3_EnergyDiff,x1_daitong4_EnergyDiff,x1_daitong5_EnergyDiff,x1_high_EnergyDiff]=energyline(x1_low,x1_daitong2,x1_daitong3,x1_daitong4,x1_daitong5,x1_high);

%调用positione()函数，得出能量曲线的变化率EnergyDiff 削波处理后的峰值V，及其横坐标位置P
[x1_low_P,x1_low_V,x1_daitong2_P,x1_daitong2_V,x1_daitong3_P,x1_daitong3_V,x1_daitong4_P,x1_daitong4_V,x1_daitong5_P,x1_daitong5_V,x1_high_P,x1_high_V]=position(x1_low_EnergyDiff,x1_daitong2_EnergyDiff,x1_daitong3_EnergyDiff,x1_daitong4_EnergyDiff,x1_daitong5_EnergyDiff,x1_high_EnergyDiff);

%将峰值位置P 比例化
%测试，结论是六个频带能量导数的长度都一样
%size(x1_low)与size(x1_daitong2)相同，都是  46797     1
%size(x1_low_EnergyDiff)与size(x1_daitong2_EnergyDiff)相同，都是  1   232

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






