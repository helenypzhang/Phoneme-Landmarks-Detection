%�˲������������ĵ���Ϊ EnergyD
%1.matlab�еĻ���ֵ����findpeaks������ΪEnergyDiff
%function [P,V]=position(EnergyDiff)
function [x1_low_P,x1_low_V,x1_daitong2_P,x1_daitong2_V,x1_daitong3_P,x1_daitong3_V,x1_daitong4_P,x1_daitong4_V,x1_daitong5_P,x1_daitong5_V,x1_high_P,x1_high_V]=position(x1_low_EnergyDiff,x1_daitong2_EnergyDiff,x1_daitong3_EnergyDiff,x1_daitong4_EnergyDiff,x1_daitong5_EnergyDiff,x1_high_EnergyDiff)

%%%%%%%%%%%%%%x1_low_EnergyDiff -> x1_low_P , x1_low_V
% % figure(20);
EnergyDiff=x1_low_EnergyDiff;
EnergyDiff=100*EnergyDiff;
% % plot(EnergyDiff);
% % title('�˲�����������ź���������x1lowEnergyDiff');
% % %title('������������100���������');  %���¼����������

[a,b]=size(EnergyDiff);  %����֤���ǶԵģ���һ��������size(EnergyDiff)=1,232 �˴�a=1��b=����
%��������������ƽѡΪ����źŷ��ȵ�30%���ߵĸ��ߣ��͵ĸ���
for i=1:b
    if EnergyDiff(i)>max(EnergyDiff)*0.3
        EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %��ʱEnergyDiff(i)Ϊ��ֵ 
    else if EnergyDiff(i)<-abs(min(EnergyDiff))*0.3
            EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %��ʱEnergyDiff(i)Ϊ��ֵ
        else
        EnergyDiff(i)=0;
        end
    end
end

%��1�ַ���
[P,V]=findpeaks(EnergyDiff,'minpeakdistance',1); %P����ֵ���Ӧ��λ�� V:��ֵ���Ӧ��ֵ   ��С���=1
x1_low_P=P;
x1_low_V=V;
figure(21);
plot(EnergyDiff);                                       %����ԭ����
title('�������� �˲���������������x1lowEnergyDiffCenterClipping');
% % hold on;
% % %plot(EnergyDiff);hold on;plot(30,maxv(50) ,'*')
% % plot(37,5.542,'*','color','R');                %�������ֵ��
% % plot(66,2.154,'*','color','R');                %�������ֵ��





%%%%%%%%%%%%%%%%%%x1_daitong2_EnergyDiff -> ,x1_daitong2_P , x1_daitong2_V
% % figure(22);
EnergyDiff=x1_daitong2_EnergyDiff;
EnergyDiff=100*EnergyDiff;
% % plot(EnergyDiff);
% % title('�˲�����������ź���������x1daitong2EnergyDiff');
% % %title('������������100���������');  %���¼����������

[a,b]=size(EnergyDiff);  %����֤���ǶԵģ���һ��������size(EnergyDiff)=1,232 �˴�a=1��b=����
%��������������ƽѡΪ����źŷ��ȵ�30%���ߵĸ��ߣ��͵ĸ���
for i=1:b
    if EnergyDiff(i)>max(EnergyDiff)*0.3
        EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %��ʱEnergyDiff(i)Ϊ��ֵ 
    else if EnergyDiff(i)<-abs(min(EnergyDiff))*0.3
            EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %��ʱEnergyDiff(i)Ϊ��ֵ
        else
        EnergyDiff(i)=0;
        end
    end
end

% %����EnergyDiff�Ƿ������������
% figure(100);
% plot(EnergyDiff);  %������ͼ��û�б仯��  �����ˣ�size()����������

%��1�ַ���
[P,V]=findpeaks(EnergyDiff,'minpeakdistance',1); %P����ֵ���Ӧ��λ�� V:��ֵ���Ӧ��ֵ   ��С���=1
x1_daitong2_P=P;
x1_daitong2_V=V;
% % figure(23);
% % plot(EnergyDiff);                                       %����ԭ����
% % title('�������� �˲���������������x1daitong2EnergyDiffCenterClipping');
% % hold on;
% % %plot(EnergyDiff);hold on;plot(30,maxv(50) ,'*')
% % plot(37,5.542,'*','color','R');                %�������ֵ��
% % plot(66,2.154,'*','color','R');                %�������ֵ��




%%%%%%%%%%%%%%%%%%x1_daitong3_EnergyDiff -> ,x1_daitong3_P , x1_daitong3_V
% % figure(24);
EnergyDiff=x1_daitong3_EnergyDiff;
EnergyDiff=100*EnergyDiff;
% % plot(EnergyDiff);
% % title('�˲�����������ź���������x1daitong3EnergyDiff');
% % %title('������������100���������');  %���¼����������

[a,b]=size(EnergyDiff);  %����֤���ǶԵģ���һ��������size(EnergyDiff)=1,232 �˴�a=1��b=����
%��������������ƽѡΪ����źŷ��ȵ�30%���ߵĸ��ߣ��͵ĸ���
for i=1:b
    if EnergyDiff(i)>max(EnergyDiff)*0.3
        EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %��ʱEnergyDiff(i)Ϊ��ֵ 
    else if EnergyDiff(i)<-abs(min(EnergyDiff))*0.3
            EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %��ʱEnergyDiff(i)Ϊ��ֵ
        else
        EnergyDiff(i)=0;
        end
    end
end

%��1�ַ���
[P,V]=findpeaks(EnergyDiff,'minpeakdistance',1); %P����ֵ���Ӧ��λ�� V:��ֵ���Ӧ��ֵ   ��С���=1
x1_daitong3_P=P;
x1_daitong3_V=V;
% % figure(25);
% % plot(EnergyDiff);                                       %����ԭ����
% % title('�������� �˲���������������x1daitong3EnergyDiffCenterClipping');
% % hold on;
% % %plot(EnergyDiff);hold on;plot(30,maxv(50) ,'*')
% % plot(37,5.542,'*','color','R');                %�������ֵ��
% % plot(66,2.154,'*','color','R');                %�������ֵ��





%%%%%%%%%%%%%%%%%%x1_daitong4_EnergyDiff -> ,x1_daitong4_P , x1_daitong4_V
% % figure(26);
EnergyDiff=x1_daitong4_EnergyDiff;
EnergyDiff=100*EnergyDiff;
% % plot(EnergyDiff);
% % title('�˲�����������ź���������x1daitong4EnergyDiff');
% % %title('������������100���������');  %���¼����������

[a,b]=size(EnergyDiff);  %����֤���ǶԵģ���һ��������size(EnergyDiff)=1,232 �˴�a=1��b=����
%��������������ƽѡΪ����źŷ��ȵ�30%���ߵĸ��ߣ��͵ĸ���
for i=1:b
    if EnergyDiff(i)>max(EnergyDiff)*0.3
        EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %��ʱEnergyDiff(i)Ϊ��ֵ 
    else if EnergyDiff(i)<-abs(min(EnergyDiff))*0.3
            EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %��ʱEnergyDiff(i)Ϊ��ֵ
        else
        EnergyDiff(i)=0;
        end
    end
end

%��1�ַ���
[P,V]=findpeaks(EnergyDiff,'minpeakdistance',1); %P����ֵ���Ӧ��λ�� V:��ֵ���Ӧ��ֵ   ��С���=1
x1_daitong4_P=P;
x1_daitong4_V=V;
% % figure(27);
% % plot(EnergyDiff);                                       %����ԭ����
% % title('�������� �˲���������������x1daitong4EnergyDiffCenterClipping');
% % hold on;
% % %plot(EnergyDiff);hold on;plot(30,maxv(50) ,'*')
% % plot(37,5.542,'*','color','R');                %�������ֵ��
% % plot(66,2.154,'*','color','R');                %�������ֵ��






%%%%%%%%%%%%%%%%%x1_daitong5_EnergyDiff -> ,x1_daitong5_P , x1_daitong5_V
% % figure(28);
EnergyDiff=x1_daitong5_EnergyDiff;
EnergyDiff=100*EnergyDiff;
% % plot(EnergyDiff);
% % title('�˲�����������ź���������x1daitong5EnergyDiff');
% % %title('������������100���������');  %���¼����������

[a,b]=size(EnergyDiff);  %����֤���ǶԵģ���һ��������size(EnergyDiff)=1,232 �˴�a=1��b=����
%��������������ƽѡΪ����źŷ��ȵ�30%���ߵĸ��ߣ��͵ĸ���
for i=1:b
    if EnergyDiff(i)>max(EnergyDiff)*0.3
        EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %��ʱEnergyDiff(i)Ϊ��ֵ 
    else if EnergyDiff(i)<-abs(min(EnergyDiff))*0.3
            EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %��ʱEnergyDiff(i)Ϊ��ֵ
        else
        EnergyDiff(i)=0;
        end
    end
end

%��1�ַ���
[P,V]=findpeaks(EnergyDiff,'minpeakdistance',1); %P����ֵ���Ӧ��λ�� V:��ֵ���Ӧ��ֵ   ��С���=1
x1_daitong5_P=P;
x1_daitong5_V=V;
% % figure(29);
% % plot(EnergyDiff);                                       %����ԭ����
% % title('�������� �˲���������������x1daitong5EnergyDiffCenterClipping');
% % hold on;
% % %plot(EnergyDiff);hold on;plot(30,maxv(50) ,'*')
% % plot(37,5.542,'*','color','R');                %�������ֵ��
% % plot(66,2.154,'*','color','R');                %�������ֵ��



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%x1_high_EnergyDiff -> x1_high_P , x1_high_V
% % figure(30);
EnergyDiff=x1_high_EnergyDiff;
EnergyDiff=100*EnergyDiff;
% % plot(EnergyDiff);
% % title('�˲�����������ź���������x1highEnergyDiff');
% % %title('������������100���������');  %���¼����������

[a,b]=size(EnergyDiff);  %����֤���ǶԵģ���һ��������size(EnergyDiff)=1,232 �˴�a=1��b=����
%��������������ƽѡΪ����źŷ��ȵ�30%���ߵĸ��ߣ��͵ĸ���
for i=1:b
    if EnergyDiff(i)>max(EnergyDiff)*0.3
        EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %��ʱEnergyDiff(i)Ϊ��ֵ 
    else if EnergyDiff(i)<-abs(min(EnergyDiff))*0.3
            EnergyDiff(i)=EnergyDiff(i)+0.1*EnergyDiff(i);  %��ʱEnergyDiff(i)Ϊ��ֵ
        else
        EnergyDiff(i)=0;
        end
    end
end

%��1�ַ���
[P,V]=findpeaks(EnergyDiff,'minpeakdistance',1); %P����ֵ���Ӧ��λ�� V:��ֵ���Ӧ��ֵ   ��С���=1
x1_high_P=P;
x1_high_V=V;
% % figure(31);
% % plot(EnergyDiff);                                       %����ԭ����
% % title('�������� �˲���������������x1highEnergyDiffCenterClipping');
% % hold on;
% % %plot(EnergyDiff);hold on;plot(30,maxv(50) ,'*')
% % plot(37,5.542,'*','color','R');                %�������ֵ��
% % plot(66,2.154,'*','color','R');                %�������ֵ��


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% test=1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ʧ�ܣ�if����û�����У�
% if EnergyDiff(maxv)>1      %�趨��ֵ����С�߶�1  
%     figure(24),
% % test
%     plot(P,maxv,'*','color','R');                %�������ֵ��
% else
%     figure(24),
% end

  




%2.ʧ�� дһ���ܹ��ҵ� �����ĵ��� ��ֵλ�õĺ��� =>�����ĵ���=0
% EnergyDD = 100 * diff(EnergyD);    %maxminΪ���������ĵ�����100��
% 
% figure(25);
% plot(EnergyDD);
% title('���������ĵ���');

% %2.���Է��⣬ʧ��
% %д���ĵ�
% resultPosition=zeros(20,2);  %100��2�е�����
% for j=1:2
%     for i=1:20
%         %��� fzero(maxmin,0)
%         %resultPosition(i,j) = vpasolve(maxmin-0);
%     end
% end
% 
% fid= fopen('�����������ߵķ�ֵ.txt','w');
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
% %         x = vpasolve(maxmin-0.0001);   %�����ĵ���Ϊ0���˴����������ķ�ֵ������x��Ϊ����
% %         resultPosition(i,1) = x;  %���������x���������һ��
% %         resultPosition(i,2) = EnergyDiff;  %��������������������ڶ���
% %     end
% % end
% 
% resultPosition();
% 
% 
% %����ĵ�
% fid= fopen('�����������ߵķ�ֵ.txt','w');
% for i=1:11
%     for j=1:12
%         fprintf(fid,'%6.2f,',resultPosition(i,j));
%     end
%     fprintf(fid,'\n');
% end
% fclose(fid);





    