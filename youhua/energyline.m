
%第二种方法
%%%%% 1)短时能量曲线   此处以band2处理后的 x1_daitong2 为例
%function EnergyDiff=energyline(x1_daitong2)
function [x1_low_EnergyDiff,x1_daitong2_EnergyDiff,x1_daitong3_EnergyDiff,x1_daitong4_EnergyDiff,x1_daitong5_EnergyDiff,x1_high_EnergyDiff]=energyline(x1_low,x1_daitong2,x1_daitong3,x1_daitong4,x1_daitong5,x1_high)

%x1_low的处理过程，得到x1_low_EnergyDiff
framelength = 200;%设置帧长
framenumber = fix(length(x1_low)/framelength);%读取语音文件对应的帧数
for i = 1:framenumber;%分帧处理
    framex1_daitong2 = x1_low((i-1)*framelength+1:i*framelength);%获取每帧的数据
    E1(i) = 0;%每帧能量置零
    for j = 1:framelength;%计算每一帧的能量
        E1(i) = E1(i)+framex1_daitong2(j)^2;
    end
end

% % figure(14);
% % subplot(2,1,1);
% % plot(E1);
% % title('滤波处理后 语音信号能量曲线');
% % xlabel('帧数');
% % ylabel('短时能量');
% % legend('N = 200')%曲线标识
% % % clear E

%%%%% 2)能量的导数曲线
x1_low_EnergyDiff=diff(E1);
% % subplot(2,1,2);
% % plot(x1_low_EnergyDiff);
% % title('滤波处理后 语音信号能量的变化率曲线');
% % xlabel('帧数');
% % ylabel('短时能量的导数');


%x1_daitong2的处理过程，得到x1_daitong2_EnergyDiff
framelength = 200;%设置帧长
framenumber = fix(length(x1_daitong2)/framelength);%读取语音文件对应的帧数
for i = 1:framenumber;%分帧处理
    framex1_daitong2 = x1_daitong2((i-1)*framelength+1:i*framelength);%获取每帧的数据
    E2(i) = 0;%每帧能量置零
    for j = 1:framelength;%计算每一帧的能量
        E2(i) = E2(i)+framex1_daitong2(j)^2;
    end
end

% % figure(15);
% % subplot(2,1,1);
% % plot(E2);
% % title('滤波处理后 语音信号能量曲线');
% % xlabel('帧数');
% % ylabel('短时能量');
% % legend('N = 200')%曲线标识
% % % clear E

%%%%% 2)能量的导数曲线
x1_daitong2_EnergyDiff=diff(E2);
% % subplot(2,1,2);
% % plot(x1_daitong2_EnergyDiff);
% % title('滤波处理后 语音信号能量的变化率曲线');
% % xlabel('帧数');
% % ylabel('短时能量的导数');


%x1_daitong3的处理过程，得到x1_daitong3_EnergyDiff
framelength = 200;%设置帧长
framenumber = fix(length(x1_daitong3)/framelength);%读取语音文件对应的帧数
for i = 1:framenumber;%分帧处理
    framex1_daitong2 = x1_daitong3((i-1)*framelength+1:i*framelength);%获取每帧的数据
    E3(i) = 0;%每帧能量置零
    for j = 1:framelength;%计算每一帧的能量
        E3(i) = E3(i)+framex1_daitong2(j)^2;
    end
end

% % figure(16);
% % subplot(2,1,1);
% % plot(E3);
% % title('滤波处理后 语音信号能量曲线');
% % xlabel('帧数');
% % ylabel('短时能量');
% % legend('N = 200')%曲线标识
% % % clear E

%%%%% 2)能量的导数曲线
x1_daitong3_EnergyDiff=diff(E3);
% % subplot(2,1,2);
% % plot(x1_daitong3_EnergyDiff);
% % title('滤波处理后 语音信号能量的变化率曲线');
% % xlabel('帧数');
% % ylabel('短时能量的导数');



%x1_daitong4的处理过程，得到x1_daitong4_EnergyDiff
framelength = 200;%设置帧长
framenumber = fix(length(x1_daitong4)/framelength);%读取语音文件对应的帧数
for i = 1:framenumber;%分帧处理
    framex1_daitong2 = x1_daitong4((i-1)*framelength+1:i*framelength);%获取每帧的数据
    E4(i) = 0;%每帧能量置零
    for j = 1:framelength;%计算每一帧的能量
        E4(i) = E4(i)+framex1_daitong2(j)^2;
    end
end

% % figure(17);
% % subplot(2,1,1);
% % plot(E4);
% % title('滤波处理后 语音信号能量曲线');
% % xlabel('帧数');
% % ylabel('短时能量');
% % legend('N = 200')%曲线标识
% % % clear E

%%%%% 2)能量的导数曲线
x1_daitong4_EnergyDiff=diff(E4);
% % subplot(2,1,2);
% % plot(x1_daitong4_EnergyDiff);
% % title('滤波处理后 语音信号能量的变化率曲线');
% % xlabel('帧数');
% % ylabel('短时能量的导数');




%x1_daitong5的处理过程，得到x1_daitong5_EnergyDiff
framelength = 200;%设置帧长
framenumber = fix(length(x1_daitong5)/framelength);%读取语音文件对应的帧数
for i = 1:framenumber;%分帧处理
    framex1_daitong2 = x1_daitong5((i-1)*framelength+1:i*framelength);%获取每帧的数据
    E5(i) = 0;%每帧能量置零
    for j = 1:framelength;%计算每一帧的能量
        E5(i) = E5(i)+framex1_daitong2(j)^2;
    end
end

% % figure(18);
% % subplot(2,1,1);
% % plot(E5);
% % title('滤波处理后 语音信号能量曲线');
% % xlabel('帧数');
% % ylabel('短时能量');
% % legend('N = 200')%曲线标识
% % % clear E

%%%%% 2)能量的导数曲线
x1_daitong5_EnergyDiff=diff(E5);
% % subplot(2,1,2);
% % plot(x1_daitong5_EnergyDiff);
% % title('滤波处理后 语音信号能量的变化率曲线');
% % xlabel('帧数');
% % ylabel('短时能量的导数');




%x1_high的处理过程，得到x1_high_EnergyDiff
framelength = 200;%设置帧长
framenumber = fix(length(x1_high)/framelength);%读取语音文件对应的帧数
for i = 1:framenumber;%分帧处理
    framex1_daitong2 = x1_high((i-1)*framelength+1:i*framelength);%获取每帧的数据
    E6(i) = 0;%每帧能量置零
    for j = 1:framelength;%计算每一帧的能量
        E6(i) = E6(i)+framex1_daitong2(j)^2;
    end
end

% % figure(19);
% % subplot(2,1,1);
% % plot(E6);
% % title('滤波处理后 语音信号能量曲线');
% % xlabel('帧数');
% % ylabel('短时能量');
% % legend('N = 200')%曲线标识
% % % clear E

%%%%% 2)能量的导数曲线
x1_high_EnergyDiff=diff(E6);
% % subplot(2,1,2);
% % plot(x1_high_EnergyDiff);
% % title('滤波处理后 语音信号能量的变化率曲线');
% % xlabel('帧数');
% % ylabel('短时能量的导数');



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %第一种方法
% % [y,fs,bits]=wavread('Sleep_Away_mono.wav');
% framelength=20;
% frameoffset=10;
% num=(length(x1_daitong2)-framelength)/frameoffset+1;
% 
% for i=1:num;
%     framex1_daitong2=x1_daitong2(1+(i-1)*(framelength-frameoffset):i*framelength-(i-1)*frameoffset);%select the date of every frame
%     Energy(i)=0;
%     Frequency(i)=0;
%     for j=1:framelength;
%         Energy(i)=Energy(i)+framex1_daitong2(j)^2;%短时能量曲线
%         Frequency(i)=Frequency(i)+framex1_daitong2(j);%短时平均幅度图
%     end;
% end;
% 
% figure(21);
% plot(Energy);
% xlabel('帧数');
% ylabel('短时能量');
% legend('framelength=20');

% figure(22);
% plot(Frequency);
% xlabel('帧数');
% ylabel('短时幅度');
% legend('framelength=20');


% %第三种方法
% %计算N=400，帧移=400时的语音能量
% s=enframe(x1_daitong2,400,400);
% s2=s.^2;
% energy=sum(s2,2)
% plot(energy)
% xlabel('帧数')
% ylabel('短时能量E')
% legend('N=400')
% axis([0,190,0,1.5*10^11])

