%ͼƬһ��������
imgpath = '*.jpg';
files = dir(imgpath);
len = length(files);
j=1;
for i=1:len
    oldname=files(i).name;%һ�ζ�ȡ�ļ���
    imgpath2=strcat('F:\һЩ�����ļ�\ACG-wallpaper\re-wallpaper1920\', oldname); 
    a=imread(imgpath2);
    a=imresize(a,[640,1080]);
%     [m,n]=size(a);
%     if m>1300
%         delete(oldname);
%         continue;
%     end
    if j<10
        newname=strrep(oldname,oldname,'.jpg');%�ַ����滻
        newname=strcat(num2str(j), newname); 
        newname=strcat('re_000', newname); %������ǰ����һ�� RH_ �ַ�����
    end
    if j>9&&j<100
      newname=strrep(oldname,oldname,'.jpg');%�ַ����滻
        newname=strcat(num2str(j), newname); 
        newname=strcat('re_00', newname); %������ǰ����һ�� RH_ �ַ�����
    end
    if j>99&&j<1000
      newname=strrep(oldname,oldname,'.jpg');%�ַ����滻
        newname=strcat(num2str(j), newname); 
        newname=strcat('re_0', newname); %������ǰ����һ�� RH_ �ַ�����
    end
    if j>999&&j<10000
      newname=strrep(oldname,oldname,'.jpg');%�ַ����滻
        newname=strcat(num2str(j), newname); 
        newname=strcat('re_0', newname); %������ǰ����һ�� RH_ �ַ�����
    end
    %oldname=strcat('F:\һЩ�����ļ�\��ֽ\������ֽ\', oldname);
    newname=strcat('F:\һЩ�����ļ�\ACG-wallpaper\re-wallpaper\', newname);
    %command = ['rename' 32 oldname 32 newname];   %��ԭ��ͼƬ������������
    %status = dos(command);
    imwrite(a,newname);                            %���Ϊ
    j=j+1;
%     if status == 0
%         disp([oldname, ' �ѱ�������Ϊ ', newname])
%     else
%         disp([oldname, ' ������ʧ��!'])
%         break;
%     end
end
 
