
%�ڶ��ַ���
%%%%% 1)��ʱ��������   �˴���band2������ x1_daitong2 Ϊ��
%function EnergyDiff=energyline(x1_daitong2)
function [x1_low_EnergyDiff,x1_daitong2_EnergyDiff,x1_daitong3_EnergyDiff,x1_daitong4_EnergyDiff,x1_daitong5_EnergyDiff,x1_high_EnergyDiff]=energyline(x1_low,x1_daitong2,x1_daitong3,x1_daitong4,x1_daitong5,x1_high)

%x1_low�Ĵ�����̣��õ�x1_low_EnergyDiff
framelength = 200;%����֡��
framenumber = fix(length(x1_low)/framelength);%��ȡ�����ļ���Ӧ��֡��
for i = 1:framenumber;%��֡����
    framex1_daitong2 = x1_low((i-1)*framelength+1:i*framelength);%��ȡÿ֡������
    E1(i) = 0;%ÿ֡��������
    for j = 1:framelength;%����ÿһ֡������
        E1(i) = E1(i)+framex1_daitong2(j)^2;
    end
end

% % figure(14);
% % subplot(2,1,1);
% % plot(E1);
% % title('�˲������ �����ź���������');
% % xlabel('֡��');
% % ylabel('��ʱ����');
% % legend('N = 200')%���߱�ʶ
% % % clear E

%%%%% 2)�����ĵ�������
x1_low_EnergyDiff=diff(E1);
% % subplot(2,1,2);
% % plot(x1_low_EnergyDiff);
% % title('�˲������ �����ź������ı仯������');
% % xlabel('֡��');
% % ylabel('��ʱ�����ĵ���');


%x1_daitong2�Ĵ�����̣��õ�x1_daitong2_EnergyDiff
framelength = 200;%����֡��
framenumber = fix(length(x1_daitong2)/framelength);%��ȡ�����ļ���Ӧ��֡��
for i = 1:framenumber;%��֡����
    framex1_daitong2 = x1_daitong2((i-1)*framelength+1:i*framelength);%��ȡÿ֡������
    E2(i) = 0;%ÿ֡��������
    for j = 1:framelength;%����ÿһ֡������
        E2(i) = E2(i)+framex1_daitong2(j)^2;
    end
end

% % figure(15);
% % subplot(2,1,1);
% % plot(E2);
% % title('�˲������ �����ź���������');
% % xlabel('֡��');
% % ylabel('��ʱ����');
% % legend('N = 200')%���߱�ʶ
% % % clear E

%%%%% 2)�����ĵ�������
x1_daitong2_EnergyDiff=diff(E2);
% % subplot(2,1,2);
% % plot(x1_daitong2_EnergyDiff);
% % title('�˲������ �����ź������ı仯������');
% % xlabel('֡��');
% % ylabel('��ʱ�����ĵ���');


%x1_daitong3�Ĵ�����̣��õ�x1_daitong3_EnergyDiff
framelength = 200;%����֡��
framenumber = fix(length(x1_daitong3)/framelength);%��ȡ�����ļ���Ӧ��֡��
for i = 1:framenumber;%��֡����
    framex1_daitong2 = x1_daitong3((i-1)*framelength+1:i*framelength);%��ȡÿ֡������
    E3(i) = 0;%ÿ֡��������
    for j = 1:framelength;%����ÿһ֡������
        E3(i) = E3(i)+framex1_daitong2(j)^2;
    end
end

% % figure(16);
% % subplot(2,1,1);
% % plot(E3);
% % title('�˲������ �����ź���������');
% % xlabel('֡��');
% % ylabel('��ʱ����');
% % legend('N = 200')%���߱�ʶ
% % % clear E

%%%%% 2)�����ĵ�������
x1_daitong3_EnergyDiff=diff(E3);
% % subplot(2,1,2);
% % plot(x1_daitong3_EnergyDiff);
% % title('�˲������ �����ź������ı仯������');
% % xlabel('֡��');
% % ylabel('��ʱ�����ĵ���');



%x1_daitong4�Ĵ�����̣��õ�x1_daitong4_EnergyDiff
framelength = 200;%����֡��
framenumber = fix(length(x1_daitong4)/framelength);%��ȡ�����ļ���Ӧ��֡��
for i = 1:framenumber;%��֡����
    framex1_daitong2 = x1_daitong4((i-1)*framelength+1:i*framelength);%��ȡÿ֡������
    E4(i) = 0;%ÿ֡��������
    for j = 1:framelength;%����ÿһ֡������
        E4(i) = E4(i)+framex1_daitong2(j)^2;
    end
end

% % figure(17);
% % subplot(2,1,1);
% % plot(E4);
% % title('�˲������ �����ź���������');
% % xlabel('֡��');
% % ylabel('��ʱ����');
% % legend('N = 200')%���߱�ʶ
% % % clear E

%%%%% 2)�����ĵ�������
x1_daitong4_EnergyDiff=diff(E4);
% % subplot(2,1,2);
% % plot(x1_daitong4_EnergyDiff);
% % title('�˲������ �����ź������ı仯������');
% % xlabel('֡��');
% % ylabel('��ʱ�����ĵ���');




%x1_daitong5�Ĵ�����̣��õ�x1_daitong5_EnergyDiff
framelength = 200;%����֡��
framenumber = fix(length(x1_daitong5)/framelength);%��ȡ�����ļ���Ӧ��֡��
for i = 1:framenumber;%��֡����
    framex1_daitong2 = x1_daitong5((i-1)*framelength+1:i*framelength);%��ȡÿ֡������
    E5(i) = 0;%ÿ֡��������
    for j = 1:framelength;%����ÿһ֡������
        E5(i) = E5(i)+framex1_daitong2(j)^2;
    end
end

% % figure(18);
% % subplot(2,1,1);
% % plot(E5);
% % title('�˲������ �����ź���������');
% % xlabel('֡��');
% % ylabel('��ʱ����');
% % legend('N = 200')%���߱�ʶ
% % % clear E

%%%%% 2)�����ĵ�������
x1_daitong5_EnergyDiff=diff(E5);
% % subplot(2,1,2);
% % plot(x1_daitong5_EnergyDiff);
% % title('�˲������ �����ź������ı仯������');
% % xlabel('֡��');
% % ylabel('��ʱ�����ĵ���');




%x1_high�Ĵ�����̣��õ�x1_high_EnergyDiff
framelength = 200;%����֡��
framenumber = fix(length(x1_high)/framelength);%��ȡ�����ļ���Ӧ��֡��
for i = 1:framenumber;%��֡����
    framex1_daitong2 = x1_high((i-1)*framelength+1:i*framelength);%��ȡÿ֡������
    E6(i) = 0;%ÿ֡��������
    for j = 1:framelength;%����ÿһ֡������
        E6(i) = E6(i)+framex1_daitong2(j)^2;
    end
end

% % figure(19);
% % subplot(2,1,1);
% % plot(E6);
% % title('�˲������ �����ź���������');
% % xlabel('֡��');
% % ylabel('��ʱ����');
% % legend('N = 200')%���߱�ʶ
% % % clear E

%%%%% 2)�����ĵ�������
x1_high_EnergyDiff=diff(E6);
% % subplot(2,1,2);
% % plot(x1_high_EnergyDiff);
% % title('�˲������ �����ź������ı仯������');
% % xlabel('֡��');
% % ylabel('��ʱ�����ĵ���');



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %��һ�ַ���
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
%         Energy(i)=Energy(i)+framex1_daitong2(j)^2;%��ʱ��������
%         Frequency(i)=Frequency(i)+framex1_daitong2(j);%��ʱƽ������ͼ
%     end;
% end;
% 
% figure(21);
% plot(Energy);
% xlabel('֡��');
% ylabel('��ʱ����');
% legend('framelength=20');

% figure(22);
% plot(Frequency);
% xlabel('֡��');
% ylabel('��ʱ����');
% legend('framelength=20');


% %�����ַ���
% %����N=400��֡��=400ʱ����������
% s=enframe(x1_daitong2,400,400);
% s2=s.^2;
% energy=sum(s2,2)
% plot(energy)
% xlabel('֡��')
% ylabel('��ʱ����E')
% legend('N=400')
% axis([0,190,0,1.5*10^11])

