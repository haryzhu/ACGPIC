%图片一键重命名
imgpath = '*.jpg';
files = dir(imgpath);
len = length(files);
j=1;
for i=1:len
    oldname=files(i).name;%一次读取文件名
    imgpath2=strcat('F:\一些个人文件\ACG-wallpaper\re-wallpaper1920\', oldname); 
    a=imread(imgpath2);
    a=imresize(a,[640,1080]);
%     [m,n]=size(a);
%     if m>1300
%         delete(oldname);
%         continue;
%     end
    if j<10
        newname=strrep(oldname,oldname,'.jpg');%字符串替换
        newname=strcat(num2str(j), newname); 
        newname=strcat('re_000', newname); %在名字前加上一个 RH_ 字符串。
    end
    if j>9&&j<100
      newname=strrep(oldname,oldname,'.jpg');%字符串替换
        newname=strcat(num2str(j), newname); 
        newname=strcat('re_00', newname); %在名字前加上一个 RH_ 字符串。
    end
    if j>99&&j<1000
      newname=strrep(oldname,oldname,'.jpg');%字符串替换
        newname=strcat(num2str(j), newname); 
        newname=strcat('re_0', newname); %在名字前加上一个 RH_ 字符串。
    end
    if j>999&&j<10000
      newname=strrep(oldname,oldname,'.jpg');%字符串替换
        newname=strcat(num2str(j), newname); 
        newname=strcat('re_0', newname); %在名字前加上一个 RH_ 字符串。
    end
    %oldname=strcat('F:\一些个人文件\壁纸\动漫壁纸\', oldname);
    newname=strcat('F:\一些个人文件\ACG-wallpaper\re-wallpaper\', newname);
    %command = ['rename' 32 oldname 32 newname];   %在原来图片基础上重命名
    %status = dos(command);
    imwrite(a,newname);                            %另存为
    j=j+1;
%     if status == 0
%         disp([oldname, ' 已被重命名为 ', newname])
%     else
%         disp([oldname, ' 重命名失败!'])
%         break;
%     end
end
 
