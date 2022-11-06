function number = bandsPtxt(x1_low_P,x1_daitong2_P,x1_daitong3_P,x1_daitong4_P,x1_daitong5_P,x1_high_P,number)

%输出文档，存P的值


str0=num2str(number);
numberband1=['band1_',str0,'.phn'];
numberband2=['band2_',str0,'.txt'];
numberband3=['band3_',str0,'.txt'];
numberband4=['band4_',str0,'.txt'];
numberband5=['band5_',str0,'.txt'];
numberband6=['band6_',str0];

%命名错误
% str1='band1.phn';     %能量导数峰值的位置与整段长的比值
% str2='band2.txt'; 
% str3='band3.txt';
% str4='band4.txt';
% str5='band5.txt';
% str6='band6';
% numberband1=[str1,str0];
% numberband2=[str2,str0];
% numberband3=[str3,str0];
% numberband4=[str4,str0];
% numberband5=[str5,str0];
% numberband6=[str6,str0];


%x1_low_P 
[a,b]=size(x1_low_P); %a为长度，b为1
fid= fopen(numberband1,'w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_low_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);

%x1_daitong2_P 
[a,b]=size(x1_daitong2_P); %a为长度，b为1
fid= fopen(numberband2,'w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_daitong2_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);

%x1_daitong3_P 
[a,b]=size(x1_daitong3_P); %a为长度，b为1
fid= fopen(numberband3,'w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_daitong3_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);


%x1_daitong4_P 
[a,b]=size(x1_daitong4_P); %a为长度，b为1
fid= fopen(numberband4,'w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_daitong4_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);

%x1_daitong5_P 
[a,b]=size(x1_daitong5_P); %a为长度，b为1
fid= fopen(numberband5,'w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_daitong5_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);

%x1_high_P 
[a,b]=size(x1_high_P); %a为长度，b为1
fid= fopen(numberband6,'w');
for i=1:a
    fprintf(fid,'%6.2f,',x1_high_P(i));
    %fprintf(fid,'\n');
end
    fprintf(fid,'\n');
fclose(fid);



