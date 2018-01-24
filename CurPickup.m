I = imread('111.jpg');%读取处理好的图片，必须是严格坐标轴线为边界的图片
I=rgb2gray(I);           %灰度变化
I(I>200)=255;           %二值化
I(I<=200)=0;            %二值化
imshow(I)                 %显示图片
 
 [y,x] = find(I==0);     %找出曲线的像素位置
y = max(y) -y;           %将屏幕坐标转换为有手系迪卡坐标
y = fliplr(y);               %左右翻转数据
plot(x,y,'b.','markersize',1)%显示转换后的图像
[Xx,Yy]= ginput(2);       % 读取真是坐标左上角和右下角的两点
 
min_x = min(Xx);
max_x = max(Xx);
min_y= min(Yy);
max_y = max(Yy);
% x1 = (x-Xx(1))*(max_x-min_x)/(Xx(2)- Xx(1))+min_x;
% y1 = (y-Yy(1))*(min_y-max_y)/(Yy(2)- Yy(1))+max_y;
%% 坐标变化，如果坐标原点不为0，则需在该轴加上省去的坐标轴数

xo = -15;%原始图像起点坐标x
yo = -30;%原始图像起点坐标x
xl = 30;    %原始图像x轴长
yl=70;      %原始图像y轴长
x1 = (x - min(Xx))*xl/(max(Xx)-min(Xx))+xo ;%数据点x值
y1 = (y - min(Yy))*yl/(max(Yy)-min(Yy))+yo;%数据点y值
plot(x1,y1,'r.','markersize',2)
axis([-15,15,-30,40])
