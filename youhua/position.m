%滤波处理后的能量的导数为 EnergyD
%1.matlab中的画峰值函数findpeaks，参数为EnergyDiff
%function [P,V]=position(EnergyDiff)
function [x1_low_P,x1_low_V,x1_daitong2_P,x1_daitong2_V,x1_daitong3_P,x1_daitong3_V,x1_daitong4_P,x1_daitong4_V,x1_daitong5_P,x1_daitong5_V,x1_high_P,x1_high_V]=position(x1_low_EnergyDiff,x1_daitong2_EnergyDiff,x1_daitong3_EnergyDiff,x1_daitong4_EnergyDiff,x1_daitong5_EnergyDiff,x1_high_EnergyDiff)

%%%%%%%%%%%%%%x1_low_EnergyDiff -> x1_low_P , x1_low_V
% % figure(20);
EnergyDiff=x1_low_EnergyDiff;
EnergyDiff=100*EnergyDiff;
% % plot(EnergyDiff);
% % title('滤波处理后语音信号能量导数x1lowEnergyDiff');
% % %title('能量导数扩大100倍后的曲线');  %以下简称能量导数

[a,b]=size(EnergyDiff);  %测试证明是对的，第一条语音，size(EnergyDiff)=1,232 此处a=1，b=长度
%削波处理，削波电平选为最大信号幅度的30%，高的更高，低的更低
for i=1:b
    if EnergyDiff(i)>max(EnergyDiff)*0.3
        EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %此时EnergyDiff(i)为正值 
    else if EnergyDiff(i)<-abs(min(EnergyDiff))*0.3
            EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %此时EnergyDiff(i)为负值
        else
        EnergyDiff(i)=0;
        end
    end
end

%第1种方法
[P,V]=findpeaks(EnergyDiff,'minpeakdistance',1); %P：峰值点对应的位置 V:峰值点对应的值   最小间隔=1
x1_low_P=P;
x1_low_V=V;
figure(21);
plot(EnergyDiff);                                       %绘制原波形
title('削波处理 滤波处理后的能量导数x1lowEnergyDiffCenterClipping');
% % hold on;
% % %plot(EnergyDiff);hold on;plot(30,maxv(50) ,'*')
% % plot(37,5.542,'*','color','R');                %绘制最大值点
% % plot(66,2.154,'*','color','R');                %绘制最大值点





%%%%%%%%%%%%%%%%%%x1_daitong2_EnergyDiff -> ,x1_daitong2_P , x1_daitong2_V
% % figure(22);
EnergyDiff=x1_daitong2_EnergyDiff;
EnergyDiff=100*EnergyDiff;
% % plot(EnergyDiff);
% % title('滤波处理后语音信号能量导数x1daitong2EnergyDiff');
% % %title('能量导数扩大100倍后的曲线');  %以下简称能量导数

[a,b]=size(EnergyDiff);  %测试证明是对的，第一条语音，size(EnergyDiff)=1,232 此处a=1，b=长度
%削波处理，削波电平选为最大信号幅度的30%，高的更高，低的更低
for i=1:b
    if EnergyDiff(i)>max(EnergyDiff)*0.3
        EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %此时EnergyDiff(i)为正值 
    else if EnergyDiff(i)<-abs(min(EnergyDiff))*0.3
            EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %此时EnergyDiff(i)为负值
        else
        EnergyDiff(i)=0;
        end
    end
end

% %测试EnergyDiff是否进行削波处理
% figure(100);
% plot(EnergyDiff);  %画出的图像没有变化，  可以了，size()函数的问题

%第1种方法
[P,V]=findpeaks(EnergyDiff,'minpeakdistance',1); %P：峰值点对应的位置 V:峰值点对应的值   最小间隔=1
x1_daitong2_P=P;
x1_daitong2_V=V;
% % figure(23);
% % plot(EnergyDiff);                                       %绘制原波形
% % title('削波处理 滤波处理后的能量导数x1daitong2EnergyDiffCenterClipping');
% % hold on;
% % %plot(EnergyDiff);hold on;plot(30,maxv(50) ,'*')
% % plot(37,5.542,'*','color','R');                %绘制最大值点
% % plot(66,2.154,'*','color','R');                %绘制最大值点




%%%%%%%%%%%%%%%%%%x1_daitong3_EnergyDiff -> ,x1_daitong3_P , x1_daitong3_V
% % figure(24);
EnergyDiff=x1_daitong3_EnergyDiff;
EnergyDiff=100*EnergyDiff;
% % plot(EnergyDiff);
% % title('滤波处理后语音信号能量导数x1daitong3EnergyDiff');
% % %title('能量导数扩大100倍后的曲线');  %以下简称能量导数

[a,b]=size(EnergyDiff);  %测试证明是对的，第一条语音，size(EnergyDiff)=1,232 此处a=1，b=长度
%削波处理，削波电平选为最大信号幅度的30%，高的更高，低的更低
for i=1:b
    if EnergyDiff(i)>max(EnergyDiff)*0.3
        EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %此时EnergyDiff(i)为正值 
    else if EnergyDiff(i)<-abs(min(EnergyDiff))*0.3
            EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %此时EnergyDiff(i)为负值
        else
        EnergyDiff(i)=0;
        end
    end
end

%第1种方法
[P,V]=findpeaks(EnergyDiff,'minpeakdistance',1); %P：峰值点对应的位置 V:峰值点对应的值   最小间隔=1
x1_daitong3_P=P;
x1_daitong3_V=V;
% % figure(25);
% % plot(EnergyDiff);                                       %绘制原波形
% % title('削波处理 滤波处理后的能量导数x1daitong3EnergyDiffCenterClipping');
% % hold on;
% % %plot(EnergyDiff);hold on;plot(30,maxv(50) ,'*')
% % plot(37,5.542,'*','color','R');                %绘制最大值点
% % plot(66,2.154,'*','color','R');                %绘制最大值点





%%%%%%%%%%%%%%%%%%x1_daitong4_EnergyDiff -> ,x1_daitong4_P , x1_daitong4_V
% % figure(26);
EnergyDiff=x1_daitong4_EnergyDiff;
EnergyDiff=100*EnergyDiff;
% % plot(EnergyDiff);
% % title('滤波处理后语音信号能量导数x1daitong4EnergyDiff');
% % %title('能量导数扩大100倍后的曲线');  %以下简称能量导数

[a,b]=size(EnergyDiff);  %测试证明是对的，第一条语音，size(EnergyDiff)=1,232 此处a=1，b=长度
%削波处理，削波电平选为最大信号幅度的30%，高的更高，低的更低
for i=1:b
    if EnergyDiff(i)>max(EnergyDiff)*0.3
        EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %此时EnergyDiff(i)为正值 
    else if EnergyDiff(i)<-abs(min(EnergyDiff))*0.3
            EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %此时EnergyDiff(i)为负值
        else
        EnergyDiff(i)=0;
        end
    end
end

%第1种方法
[P,V]=findpeaks(EnergyDiff,'minpeakdistance',1); %P：峰值点对应的位置 V:峰值点对应的值   最小间隔=1
x1_daitong4_P=P;
x1_daitong4_V=V;
% % figure(27);
% % plot(EnergyDiff);                                       %绘制原波形
% % title('削波处理 滤波处理后的能量导数x1daitong4EnergyDiffCenterClipping');
% % hold on;
% % %plot(EnergyDiff);hold on;plot(30,maxv(50) ,'*')
% % plot(37,5.542,'*','color','R');                %绘制最大值点
% % plot(66,2.154,'*','color','R');                %绘制最大值点






%%%%%%%%%%%%%%%%%x1_daitong5_EnergyDiff -> ,x1_daitong5_P , x1_daitong5_V
% % figure(28);
EnergyDiff=x1_daitong5_EnergyDiff;
EnergyDiff=100*EnergyDiff;
% % plot(EnergyDiff);
% % title('滤波处理后语音信号能量导数x1daitong5EnergyDiff');
% % %title('能量导数扩大100倍后的曲线');  %以下简称能量导数

[a,b]=size(EnergyDiff);  %测试证明是对的，第一条语音，size(EnergyDiff)=1,232 此处a=1，b=长度
%削波处理，削波电平选为最大信号幅度的30%，高的更高，低的更低
for i=1:b
    if EnergyDiff(i)>max(EnergyDiff)*0.3
        EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %此时EnergyDiff(i)为正值 
    else if EnergyDiff(i)<-abs(min(EnergyDiff))*0.3
            EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %此时EnergyDiff(i)为负值
        else
        EnergyDiff(i)=0;
        end
    end
end

%第1种方法
[P,V]=findpeaks(EnergyDiff,'minpeakdistance',1); %P：峰值点对应的位置 V:峰值点对应的值   最小间隔=1
x1_daitong5_P=P;
x1_daitong5_V=V;
% % figure(29);
% % plot(EnergyDiff);                                       %绘制原波形
% % title('削波处理 滤波处理后的能量导数x1daitong5EnergyDiffCenterClipping');
% % hold on;
% % %plot(EnergyDiff);hold on;plot(30,maxv(50) ,'*')
% % plot(37,5.542,'*','color','R');                %绘制最大值点
% % plot(66,2.154,'*','color','R');                %绘制最大值点



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%x1_high_EnergyDiff -> x1_high_P , x1_high_V
% % figure(30);
EnergyDiff=x1_high_EnergyDiff;
EnergyDiff=100*EnergyDiff;
% % plot(EnergyDiff);
% % title('滤波处理后语音信号能量导数x1highEnergyDiff');
% % %title('能量导数扩大100倍后的曲线');  %以下简称能量导数

[a,b]=size(EnergyDiff);  %测试证明是对的，第一条语音，size(EnergyDiff)=1,232 此处a=1，b=长度
%削波处理，削波电平选为最大信号幅度的30%，高的更高，低的更低
for i=1:b
    if EnergyDiff(i)>max(EnergyDiff)*0.3
        EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %此时EnergyDiff(i)为正值 
    else if EnergyDiff(i)<-abs(min(EnergyDiff))*0.3
            EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %此时EnergyDiff(i)为负值
        else
        EnergyDiff(i)=0;
        end
    end
end

%第1种方法
[P,V]=findpeaks(EnergyDiff,'minpeakdistance',1); %P：峰值点对应的位置 V:峰值点对应的值   最小间隔=1
x1_high_P=P;
x1_high_V=V;
% % figure(31);
% % plot(EnergyDiff);                                       %绘制原波形
% % title('削波处理 滤波处理后的能量导数x1highEnergyDiffCenterClipping');
% % hold on;
% % %plot(EnergyDiff);hold on;plot(30,maxv(50) ,'*')
% % plot(37,5.542,'*','color','R');                %绘制最大值点
% % plot(66,2.154,'*','color','R');                %绘制最大值点


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% test=1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%失败，if条件没有运行！
% if EnergyDiff(maxv)>1      %设定峰值的最小高度1  
%     figure(24),
% % test
%     plot(P,maxv,'*','color','R');                %绘制最大值点
% else
%     figure(24),
% end

  




%2.失败 写一个能够找到 能量的导数 峰值位置的函数 =>导数的导数=0
% EnergyDD = 100 * diff(EnergyD);    %maxmin为能量导数的导数的100倍
% 
% figure(25);
% plot(EnergyDD);
% title('能量导数的导数');

% %2.尝试反解，失败
% %写入文档
% resultPosition=zeros(20,2);  %100行2列的数组
% for j=1:2
%     for i=1:20
%         %错的 fzero(maxmin,0)
%         %resultPosition(i,j) = vpasolve(maxmin-0);
%     end
% end
% 
% fid= fopen('能量导数曲线的峰值.txt','w');
% for j=1:12
%     fprintf(fid,'%6.2f,',resultPosition(1,j));
% end
% fprintf(fid,'\n');
% fclose(fid);
% 
% 
% % x=getx(EnergyDD,'xdata');
% % y=gety(EnergyDD,'ydata');
% % [x' y]
% 
% 
% % for i=1:50
% %     if abs(EnergyDiff)>0.008
% %         x = vpasolve(maxmin-0.0001);   %导数的导数为0，此处能量导数的峰值，反解x即为坐标
% %         resultPosition(i,1) = x;  %将反解出的x存入数组第一列
% %         resultPosition(i,2) = EnergyDiff;  %将导数的能量存入数组第二列
% %     end
% % end
% 
% resultPosition();
% 
% 
% %输出文档
% fid= fopen('能量导数曲线的峰值.txt','w');
% for i=1:11
%     for j=1:12
%         fprintf(fid,'%6.2f,',resultPosition(i,j));
%     end
%     fprintf(fid,'\n');
% end
% fclose(fid);





    